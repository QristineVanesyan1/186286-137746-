/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsBackgroundGen {
  const $AssetsBackgroundGen();

  /// File path: assets/background/story1.png
  AssetGenImage get story1 =>
      const AssetGenImage('assets/background/story1.png');

  /// File path: assets/background/story10.png
  AssetGenImage get story10 =>
      const AssetGenImage('assets/background/story10.png');

  /// File path: assets/background/story11.png
  AssetGenImage get story11 =>
      const AssetGenImage('assets/background/story11.png');

  /// File path: assets/background/story12.png
  AssetGenImage get story12 =>
      const AssetGenImage('assets/background/story12.png');

  /// File path: assets/background/story2.png
  AssetGenImage get story2 =>
      const AssetGenImage('assets/background/story2.png');

  /// File path: assets/background/story3.png
  AssetGenImage get story3 =>
      const AssetGenImage('assets/background/story3.png');

  /// File path: assets/background/story4.png
  AssetGenImage get story4 =>
      const AssetGenImage('assets/background/story4.png');

  /// File path: assets/background/story5.png
  AssetGenImage get story5 =>
      const AssetGenImage('assets/background/story5.png');

  /// File path: assets/background/story6.png
  AssetGenImage get story6 =>
      const AssetGenImage('assets/background/story6.png');

  /// File path: assets/background/story7.png
  AssetGenImage get story7 =>
      const AssetGenImage('assets/background/story7.png');

  /// File path: assets/background/story8.png
  AssetGenImage get story8 =>
      const AssetGenImage('assets/background/story8.png');

  /// File path: assets/background/story9.png
  AssetGenImage get story9 =>
      const AssetGenImage('assets/background/story9.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    story1,
    story10,
    story11,
    story12,
    story2,
    story3,
    story4,
    story5,
    story6,
    story7,
    story8,
    story9,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bubble.png
  AssetGenImage get bubble => const AssetGenImage('assets/images/bubble.png');

  /// File path: assets/images/button.png
  AssetGenImage get button => const AssetGenImage('assets/images/button.png');

  /// File path: assets/images/card.png
  AssetGenImage get card => const AssetGenImage('assets/images/card.png');

  /// File path: assets/images/dialog.png
  AssetGenImage get dialog => const AssetGenImage('assets/images/dialog.png');

  /// File path: assets/images/small_card.png
  AssetGenImage get smallCard =>
      const AssetGenImage('assets/images/small_card.png');

  /// List of all assets
  List<AssetGenImage> get values => [bubble, button, card, dialog, smallCard];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/close.svg
  String get close => 'assets/svg/close.svg';

  /// List of all assets
  List<String> get values => [close];
}

class Assets {
  const Assets._();

  static const $AssetsBackgroundGen background = $AssetsBackgroundGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
