// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:form_field_validator/form_field_validator.dart';

enum TextFiledType {
  email,
  password,
  authCode,
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

      case TextFiledType.authCode:
        return MultiValidator([
          RequiredValidator(errorText: '認証コードを正しく入力してください'),
          MaxLengthValidator(6, errorText: '認証コードを正しく入力してください'),
          PatternValidator(r'^[0-9]+$', errorText: '認証コードを正しく入力してください'),
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
    this.width,
    this.obscureText = false,
    this.onChanged,
  });

  final String hintText;
  final double? width;
  final TextFiledType textFieldType;
  final TextEditingController textController;
  final bool obscureText;
  final ValueChanged<String>? onChanged;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late final TextEditingController _textController = widget.textController;
  bool showSecureText = true;

  @override
  Widget build(BuildContext context) {
    final hintText = widget.hintText;

    return SizedBox(
      width: widget.width ?? MediaQuery.of(context).size.width * 0.9,
      child: TextFormField(
        controller: _textController,
        obscureText: widget.obscureText && showSecureText,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: widget.textFieldType.validator.call,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: !widget.obscureText
              ? null
              : IconButton(
                  icon: Icon(
                      showSecureText ? Icons.visibility_off : Icons.visibility),
                  onPressed: () => _onPressedObscureText(),
                ),
        ),
        onChanged: widget.onChanged,
      ),
    );
  }

  void _onPressedObscureText() {
    setState(() {
      showSecureText = !showSecureText;
    });
  }
}
