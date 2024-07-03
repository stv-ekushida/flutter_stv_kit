// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

// Project imports:
import 'package:flutter_stv_kit/core/app_color.dart';
import 'package:flutter_stv_kit/data/model/news/news.dart';
import 'package:flutter_stv_kit/data/remote/news/news_data_source.dart';
import 'package:flutter_stv_kit/gen/assets.gen.dart';
import 'package:flutter_stv_kit/i18n/strings_ja.g.dart';
import 'package:flutter_stv_kit/ui/component/custom_divider.dart';
import 'package:flutter_stv_kit/ui/component/custom_indicator.dart';
import 'package:flutter_stv_kit/ui/news/news_list/news_list_screen_view_model.dart';

class NewsListScreen extends ConsumerStatefulWidget {
  const NewsListScreen({super.key});

  @override
  ConsumerState<NewsListScreen> createState() => _NewsListScreenState();
}

class _NewsListScreenState extends ConsumerState<NewsListScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final _tabs = [
    Tab(text: NewsType.personal.title),
    Tab(text: NewsType.all.title),
  ];

  @override
  void initState() {
    _tabController = TabController(length: _tabs.length, vsync: this);
    _tabController.addListener(
      () => _onChangeTab(),
    );

    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _init(),
    );

    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.strings.newsList.screen),
      ),
      body: _buildBody,
    );
  }

  Widget get _buildBody {
    return Column(
      children: [
        TabBar(
          labelColor: AppColor.primaryColor,
          indicatorColor: AppColor.primaryColor,
          unselectedLabelColor: Colors.grey[500],
          controller: _tabController,
          tabs: _tabs,
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              _buildTabContainer,
              _buildTabContainer,
            ],
          ),
        ),
      ],
    );
  }

  Widget get _buildTabContainer {
    final state = ref.watch(newsListScreenViewModelProvider());

    return state.when(
      none: () => const SizedBox.shrink(),
      loading: (_, news) {
        return Stack(
          children: [
            if (news.isNotEmpty) _NewsList(news: news),
            const CustomIndicator(),
          ],
        );
      },
      data: (_, news) => _NewsList(news: news),
      error: (_, __, news) => _NewsList(news: news),
    );
  }

  void _init() {
    ref
        .read(newsListScreenViewModelProvider().notifier)
        .fetch(NewsType.personal);
  }

  void _onChangeTab() {
    {
      if (!_tabController.indexIsChanging) {
        ref
            .read(newsListScreenViewModelProvider().notifier)
            .selected(_tabController.index);
      }
    }
  }
}

class _NewsList extends StatelessWidget {
  const _NewsList({
    super.key,
    required this.news,
  });

  final List<News> news;

  @override
  Widget build(BuildContext context) {
    if (news.isEmpty) {
      return Center(
        child: _NewListEmpty(),
      );
    }
    return ListView.separated(
      itemBuilder: (_, index) => _NewsListTile(
        news: news[index],
      ),
      separatorBuilder: (_, __) => const CustomDivider(),
      itemCount: news.length,
    );
  }
}

class _NewListEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        SizedBox(
          width: 128,
          child: Image.asset(Assets.images.logo.path),
        ),
        const Gap(32),
        Text(i18n.strings.newsList.empty),
        const Spacer(),
      ],
    );
  }
}

class _NewsListTile extends StatelessWidget {
  const _NewsListTile({
    required this.news,
  });

  final News news;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Expanded(
            child: Text(
              news.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      subtitle: Text(
        news.postText(),
        style: const TextStyle(fontSize: 14, color: Colors.grey),
      ),
      trailing: const Icon(Icons.arrow_forward_ios_sharp),
    );
  }
}
