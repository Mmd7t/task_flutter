//NOTE ==> Custom Image Extension
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_flutter/app/config/constants/constants.dart';

extension CustomImage on String {
  Widget assetImage({double? width, double? height, BoxFit? fit}) =>
      Image.asset(
        '${Constants.imagesPath}$this',
        width: width ?? 50,
        height: height ?? width ?? 50,
        fit: fit ?? BoxFit.none,
      );
  Widget image({double? width, BoxFit? fit}) => CachedNetworkImage(
        imageUrl: this,
        alignment: Alignment.center,
        width: width,
        fit: fit ?? BoxFit.cover,
        errorWidget: (context, s, v) => const SizedBox(),
      );
  ImageProvider get imageProvider => CachedNetworkImageProvider(this);
}
