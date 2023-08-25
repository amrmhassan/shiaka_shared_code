// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_code/shared_code.dart';

class MainButton extends StatelessWidget {
  final String? title;
  final VoidCallback onTap;
  final bool active;
  final double? width;
  final double? height;
  final List<BoxShadow>? boxShadow;
  final Widget? child;
  final EdgeInsets? padding;
  final Color? backgroundColor;
  final TextStyle? style;
  final Widget? icon;

  const MainButton({
    required this.onTap,
    super.key,
    this.title,
    this.active = true,
    this.width,
    this.height,
    this.boxShadow,
    this.child,
    this.padding,
    this.backgroundColor,
    this.style,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonWrapper(
      width: width,
      height: height,
      active: active,
      onTap: onTap,
      padding: padding ??
          EdgeInsets.symmetric(
            horizontal: kHPad,
            vertical: kVPad / 2,
          ),
      borderRadius: 1000,
      backgroundColor: backgroundColor ?? customColors.blueColor,
      child: child ??
          (icon == null
              ? Text(
                  title ?? '',
                  style: style ?? h2LightTextStyle,
                )
              : Row(
                  children: [
                    icon!,
                    Text(
                      title ?? '',
                      style: style ?? h2LightTextStyle,
                    )
                  ],
                )),
    );
  }
}