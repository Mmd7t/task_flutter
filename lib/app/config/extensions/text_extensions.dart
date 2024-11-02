//NOTE ==> Custom Text Styles Extension
import 'package:flutter/material.dart';

extension CustomTextStyles on String {
  Text headlineSmall(BuildContext context) => Text(
        this,
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              fontFamily: 'Inter',
            ),
        textAlign: TextAlign.center,
      );

  Text titleLarge(BuildContext context, {Color? color}) => Text(
        this,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: color ?? Colors.black,
              fontFamily: 'Inter',
              fontWeight: FontWeight.bold,
            ),
        textAlign: TextAlign.center,
      );
  Text titleMedium(BuildContext context,
          {Color? color, bool centerText = true}) =>
      Text(
        this,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: color ?? Colors.black,
              fontWeight: FontWeight.w700,
              fontFamily: 'Inter',
            ),
        textAlign: (centerText) ? TextAlign.center : TextAlign.start,
      );

  Text titleSmall(BuildContext context,
          {Color? color, int? maxLines, TextOverflow? overflow}) =>
      Text(
        this,
        maxLines: maxLines,
        overflow: overflow,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: color ?? Colors.black,
              fontFamily: 'Inter',
            ),
      );

  Text labelLarge(
    BuildContext context, {
    Color? color,
    FontWeight? weight,
    TextDecoration decoration = TextDecoration.none,
  }) =>
      Text(
        this,
        style: Theme.of(context).textTheme.labelLarge!.copyWith(
              color: color ?? Theme.of(context).primaryColor,
              decoration: decoration,
              fontFamily: 'Inter',
              fontWeight:
                  weight ?? Theme.of(context).textTheme.labelLarge!.fontWeight,
            ),
      );

  Text body(
    BuildContext context, {
    Color? color,
    TextAlign? align,
    TextDecoration decoration = TextDecoration.none,
    FontWeight? weight,
    int? maxLines,
    TextOverflow? overflow,
  }) =>
      Text(
        this,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: color ?? Colors.black,
              decoration: decoration,
              fontFamily: 'Inter',
              fontWeight:
                  weight ?? Theme.of(context).textTheme.bodyLarge!.fontWeight,
            ),
        softWrap: true,
        maxLines: maxLines,
        overflow: overflow,
        textAlign: align ?? TextAlign.start,
      );
  Text bodySmall(
    BuildContext context, {
    Color? color,
    FontWeight? weight,
    TextAlign align = TextAlign.start,
  }) =>
      Text(
        this,
        textAlign: align,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: color ?? Colors.black,
              fontWeight: weight ?? FontWeight.normal,
              fontFamily: 'Inter',
            ),
      );
  Text labelSmall(
    BuildContext context, {
    Color? color,
    int? maxLines,
    FontWeight weight = FontWeight.normal,
    TextDecoration decoration = TextDecoration.none,
    TextAlign align = TextAlign.start,
  }) =>
      Text(
        this,
        style: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: color ?? Colors.black,
              fontWeight: weight,
              decoration: decoration,
              fontFamily: 'Inter',
            ),
        textAlign: align,
        softWrap: true,
        maxLines: maxLines,
        // overflow: TextOverflow.ellipsis,
      );

  Text tiny(BuildContext context,
          {Color? color, FontWeight? weight, TextAlign? align}) =>
      Text(
        this,
        style: Theme.of(context).textTheme.labelSmall!.copyWith(
              fontSize: 10,
              color: color ?? Colors.black,
              fontWeight: weight ?? FontWeight.normal,
              fontFamily: 'Inter',
            ),
        textAlign: align ?? TextAlign.start,
      );
  Text veryTiny(BuildContext context, {Color? color}) => Text(
        this,
        style: Theme.of(context).textTheme.labelSmall!.copyWith(
              fontSize: 8,
              color: color ?? Colors.white,
              fontFamily: 'Inter',
            ),
      );
}
