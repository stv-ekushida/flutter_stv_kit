// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:form_field_validator/form_field_validator.dart';

enum TextFiledType {
  email,
  password,
}

extension TextFiledTypeEx on TextFiledType {
  FieldValidator<String?> get validator {
    switch (this) {
      case TextFiledType.email:
        return EmailValidator(errorText: 'メールアドレスを正しく入力してください');

      case TextFiledType.password:
        return MultiValidator([
          RequiredValidator(errorText: 'パスワードを正しく入力してください'),
          MinLengthValidator(8, errorText: 'パスワードは8文字以上入力してください'),
          PatternValidator(r'(?=.*?[#?!@$%^&*-])',
              errorText: '記号は1文字以上入力してください'),
        ]);
    }
  }
}

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.textFieldType,
    required this.textController,
    this.obscureText = false,
  });

  final String hintText;
  final TextFiledType textFieldType;
  final TextEditingController textController;
  final bool obscureText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late final TextEditingController _textController = widget.textController;
  bool showSecureText = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final hintText = widget.hintText;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 343,
              color: Colors.white,
              child: TextFormField(
                controller: _textController,
                obscureText: widget.obscureText && showSecureText,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: widget.textFieldType.validator.call,
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  alignLabelWithHint: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  border: const OutlineInputBorder(),
                  hintText: hintText,
                  suffixIcon: !widget.obscureText
                      ? null
                      : IconButton(
                          icon: Icon(showSecureText
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () => _onPressedObscureText(),
                        ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  void _onPressedObscureText() {
    setState(() {
      showSecureText = !showSecureText;
    });
  }
}
