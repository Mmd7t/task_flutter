import 'package:flutter/material.dart';
import 'package:test_flutter/app/config/enums/enums.dart';
import 'package:test_flutter/app/config/extensions/extensions.dart';
import 'package:test_flutter/app/config/extensions/text_extensions.dart';

class GlobalButton extends StatelessWidget {
  final ButtonType type;
  final double? width, height;
  final String? icon;
  final String text;
  final Color? color;
  final Color? textColor;
  final Color? splashColor;
  final VoidCallback onTap;
  final bool elevation;
  const GlobalButton({
    super.key,
    required this.onTap,
    this.icon,
    required this.text,
    this.color,
    this.splashColor,
    this.textColor,
    required this.type,
    this.height,
    this.width,
    this.elevation = true,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: width,
      height: height ?? 50,
      onPressed: onTap,
      elevation: 0.0,
      splashColor: splashColor ?? context.color.primary.withOpacity(0.4),
      highlightElevation: 0.0,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
        side: type == ButtonType.outlined
            ? BorderSide(
                color: context.color.primary,
              )
            : BorderSide.none,
      ),
      color: type == ButtonType.outlined
          ? Colors.white
          : color ?? context.color.primary,
      child: text.labelLarge(context,
          color: type == ButtonType.outlined
              ? context.color.primary
              : textColor ?? Colors.white),
    );
  }
}
