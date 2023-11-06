// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_code/shared_code.dart';

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
  final int? minLines;
  final Widget? leading;
  final EdgeInsets? padding;
  final String? hidePasswordSvgPath;
  final String? showPasswordSvgPath;
  final List<TextInputFormatter>? inputFormatters;

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
    this.minLines,
    this.leading,
    this.padding,
    this.hidePasswordSvgPath,
    this.showPasswordSvgPath,
    this.inputFormatters,
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
      inputFormatters: [],
      minLines: widget.minLines,
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
      backgroundColor: customColors.textFieldBackgroundColor,
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
      padding: widget.padding ?? EdgeInsets.symmetric(horizontal: kHPad / 2),
    );
  }

  Widget? passwordEye() {
    return widget.password && passwordShown
        ? GestureDetector(
            onTap: togglePasswordShown,
            child: SvgPicture.asset(
              widget.hidePasswordSvgPath ?? 'assets/svg/eye-closed.svg',
            ),
          )
        : widget.password && !passwordShown
            ? GestureDetector(
                onTap: togglePasswordShown,
                child: SvgPicture.asset(
                  widget.showPasswordSvgPath ?? 'assets/svg/eye-open.svg',
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
          customColors.blueColor,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
