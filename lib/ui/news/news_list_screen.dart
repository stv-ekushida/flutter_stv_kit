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
import 'package:flutter_stv_kit/ui/news/news_list_screen_view_model.dart';

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
      () {
        if (!_tabController.indexIsChanging) {
          ref
              .read(newsListScreenViewModelProvider().notifier)
              .selected(_tabController.index);

          ref.read(newsListScreenViewModelProvider().notifier).fetch();
        }
      },
    );

    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        ref.read(newsListScreenViewModelProvider().notifier).fetch();
      },
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
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    final state = ref.watch(newsListScreenViewModelProvider());

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
              _buildContainer(state.personalNews, state.isLoading),
              _buildContainer(state.allNews, state.isLoading),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildContainer(List<News> news, bool isLoading) {
    return Stack(
      alignment: Alignment.center,
      children: [
        news.isEmpty
            ? Center(child: _NewListEmpty())
            : ListView.separated(
                itemBuilder: (_, index) {
                  final newsItem = news[index];

                  return _NewsListTile(
                    news: newsItem,
                  );
                },
                separatorBuilder: (_, __) => const CustomDivider(),
                itemCount: news.length,
              ),
        if (isLoading) const CustomIndicator()
      ],
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
