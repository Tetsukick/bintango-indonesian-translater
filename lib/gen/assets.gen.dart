/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsEnvGen {
  const $AssetsEnvGen();

  /// File path: assets/env/.env.development
  String get envDevelopment => 'assets/env/.env.development';

  /// File path: assets/env/.env.production
  String get envProduction => 'assets/env/.env.production';

  /// File path: assets/env/.env.staging
  String get envStaging => 'assets/env/.env.staging';

  /// List of all assets
  List<String> get values => [envDevelopment, envProduction, envStaging];
}

class $AssetsImageGen {
  const $AssetsImageGen();

  /// File path: assets/image/bintango-translate-logo.png
  AssetGenImage get bintangoTranslateLogo =>
      const AssetGenImage('assets/image/bintango-translate-logo.png');

  /// File path: assets/image/bintango_logo_256.png
  AssetGenImage get bintangoLogo256 =>
      const AssetGenImage('assets/image/bintango_logo_256.png');

  /// File path: assets/image/english_64.png
  AssetGenImage get english64 =>
      const AssetGenImage('assets/image/english_64.png');

  /// File path: assets/image/example_64.png
  AssetGenImage get example64 =>
      const AssetGenImage('assets/image/example_64.png');

  /// File path: assets/image/home_128.png
  AssetGenImage get home128 => const AssetGenImage('assets/image/home_128.png');

  /// File path: assets/image/indonesia_64.png
  AssetGenImage get indonesia64 =>
      const AssetGenImage('assets/image/indonesia_64.png');

  /// File path: assets/image/info_notes.png
  AssetGenImage get infoNotes =>
      const AssetGenImage('assets/image/info_notes.png');

  /// File path: assets/image/japan_64.png
  AssetGenImage get japan64 => const AssetGenImage('assets/image/japan_64.png');

  /// File path: assets/image/japan_fuji_64.png
  AssetGenImage get japanFuji64 =>
      const AssetGenImage('assets/image/japan_fuji_64.png');

  /// File path: assets/image/reverse_128.png
  AssetGenImage get reverse128 =>
      const AssetGenImage('assets/image/reverse_128.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        bintangoTranslateLogo,
        bintangoLogo256,
        english64,
        example64,
        home128,
        indonesia64,
        infoNotes,
        japan64,
        japanFuji64,
        reverse128
      ];
}

class $AssetsLangGen {
  const $AssetsLangGen();

  /// File path: assets/lang/en.json
  String get en => 'assets/lang/en.json';

  /// List of all assets
  List<String> get values => [en];
}

class $AssetsLottieGen {
  const $AssetsLottieGen();

  /// File path: assets/lottie/not_found_404.json
  String get notFound404 => 'assets/lottie/not_found_404.json';

  /// List of all assets
  List<String> get values => [notFound404];
}

class Assets {
  Assets._();

  static const AssetGenImage appLogo = AssetGenImage('assets/app_logo.png');
  static const $AssetsEnvGen env = $AssetsEnvGen();
  static const $AssetsImageGen image = $AssetsImageGen();
  static const $AssetsLangGen lang = $AssetsLangGen();
  static const $AssetsLottieGen lottie = $AssetsLottieGen();

  /// List of all assets
  static List<AssetGenImage> get values => [appLogo];
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
