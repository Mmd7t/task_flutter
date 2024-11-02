//NOTE ==> Custom Icon Provider Extension
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart' hide Svg;
import 'package:test_flutter/app/config/constants/constants.dart';

//NOTE ==> Custom MediaQuery Extension
extension DarkIconsChanging on String {
  Widget coloredIcon(
          {double? width, bool isBrand = false, bool isIllustration = false}) =>
      icon(width: width, isBrand: isBrand, isIllustration: isIllustration);
}

extension CustomIcon on String {
  Widget icon(
          {double? width,
          bool isBrand = false,
          bool isIllustration = false,
          ColorFilter? colorFilter}) =>
      SvgPicture.asset(
        '${Constants.iconsPath}$this.svg',
        width: width,
        colorFilter:
            colorFilter ?? const ColorFilter.mode(Colors.white, BlendMode.dst),
      );
}
