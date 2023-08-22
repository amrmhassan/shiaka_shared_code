// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_code/shared_code/constants/colors.dart';
import 'package:shared_code/shared_code/constants/sizes.dart';
import 'package:shared_code/shared_code/constants/styles.dart';
import 'package:shared_code/shared_code/widgets/custom_text_field.dart';

class FancyTextField extends StatefulWidget {
  final String hint;
  final String? iconPath;
  final TextInputType? inputType;
  final bool password;
  final bool autoFocus;
  final Function(String value)? onChange;
  final TextEditingController? controller;
  final String? errorText;
  final Widget? trailingIcon;
  final TextInputAction? textInputAction;
  final bool enabled;
  final int? maxLines;
  final Widget? leading;

  const FancyTextField({
    super.key,
    required this.hint,
    this.iconPath,
    this.onChange,
    this.inputType,
    this.password = false,
    this.controller,
    this.autoFocus = false,
    this.errorText,
    this.trailingIcon,
    this.textInputAction,
    this.enabled = true,
    this.maxLines,
    this.leading,
  });

  @override
  State<FancyTextField> createState() => _FancyTextFieldState();
}

class _FancyTextFieldState extends State<FancyTextField> {
  bool passwordShown = false;
  void togglePasswordShown() {
    setState(() {
      passwordShown = !passwordShown;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      title: widget.hint,
      enabled: widget.enabled,
      errorText: widget.errorText,
      controller: widget.controller,
      onChange: widget.onChange,
      autoFocus: widget.autoFocus,
      keyboardType: widget.inputType,
      textInputAction: widget.textInputAction,
      password: widget.password,
      handleShowPassword: togglePasswordShown,
      maxLines: widget.maxLines,
      obscureText: !passwordShown && widget.password,
      color: Colors.red,
      backgroundColor: LightThemeColors.textFieldBackgroundColor,
      borderColor: Colors.transparent,
      textStyle: h4LiteTextStyle,
      borderRadius: BorderRadius.circular(mediumBorderRadius),
      leadingIcon: widget.leading ??
          (widget.iconPath == null
              ? null
              : TextFieldLeadingIcon(
                  iconPath: widget.iconPath,
                )),
      trailingIcon: widget.trailingIcon ?? passwordEye(),
      padding: EdgeInsets.symmetric(horizontal: kHPad / 2),
    );
  }

  Widget? passwordEye() {
    return widget.password && passwordShown
        ? GestureDetector(
            onTap: togglePasswordShown,
            child: SvgPicture.asset(
              'assets/svg/eye-closed.svg',
            ),
          )
        : widget.password && !passwordShown
            ? GestureDetector(
                onTap: togglePasswordShown,
                child: SvgPicture.asset(
                  'assets/svg/eye-open.svg',
                ),
              )
            : null;
  }
}

class TextFieldLeadingIcon extends StatelessWidget {
  final String? iconPath;
  const TextFieldLeadingIcon({
    super.key,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        smallPadding,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(mediumBorderRadius),
      ),
      child: SvgPicture.asset(
        iconPath!,
        width: mediumIconSize * .8,
        colorFilter: ColorFilter.mode(
          LightThemeColors.kBlueColor,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}