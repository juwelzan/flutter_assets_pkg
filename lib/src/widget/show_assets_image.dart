import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ShowAssetsImage<T> extends StatelessWidget {
  final T image;
  final double? height, width;
  final Alignment alignment;
  final Color? color;
  final BoxFit? fit;

  const ShowAssetsImage({
    super.key,
    required this.image,
    this.height,
    this.width,
    this.alignment = .center,
    this.color,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: height,
      width: width,
      color: color,
      alignment: alignment,
      fit: fit,

      errorWidget: (context, url, error) => Icon(Icons.broken_image),
      placeholder: (context, url) => CircularProgressIndicator(),

      imageUrl: image.toString(),
    );
  }
}
