/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsI18nGen {
  const $AssetsI18nGen();

  /// File path: assets/i18n/en-US.json
  String get enUS => 'assets/i18n/en-US.json';

  /// File path: assets/i18n/uk-UA.json
  String get ukUA => 'assets/i18n/uk-UA.json';

  /// List of all assets
  List<String> get values => [enUS, ukUA];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/ic_account.png
  AssetGenImage get icAccount =>
      const AssetGenImage('assets/images/ic_account.png');

  /// File path: assets/images/ic_fav.png
  AssetGenImage get icFav => const AssetGenImage('assets/images/ic_fav.png');

  /// File path: assets/images/ic_fav_active.png
  AssetGenImage get icFavActive =>
      const AssetGenImage('assets/images/ic_fav_active.png');

  /// File path: assets/images/ic_lightning.png
  AssetGenImage get icLightning =>
      const AssetGenImage('assets/images/ic_lightning.png');

  /// File path: assets/images/ic_lightning_active.png
  AssetGenImage get icLightningActive =>
      const AssetGenImage('assets/images/ic_lightning_active.png');

  /// File path: assets/images/ic_map.png
  AssetGenImage get icMap => const AssetGenImage('assets/images/ic_map.png');

  /// File path: assets/images/ic_map_active.png
  AssetGenImage get icMapActive =>
      const AssetGenImage('assets/images/ic_map_active.png');

  /// File path: assets/images/ic_map_pin.png
  AssetGenImage get icMapPin =>
      const AssetGenImage('assets/images/ic_map_pin.png');

  /// File path: assets/images/ic_wallet.png
  AssetGenImage get icWallet =>
      const AssetGenImage('assets/images/ic_wallet.png');

  /// File path: assets/images/my_location.png
  AssetGenImage get myLocation =>
      const AssetGenImage('assets/images/my_location.png');

  /// File path: assets/images/pin_black.png
  AssetGenImage get pinBlack =>
      const AssetGenImage('assets/images/pin_black.png');

  /// File path: assets/images/pin_green.png
  AssetGenImage get pinGreen =>
      const AssetGenImage('assets/images/pin_green.png');

  /// File path: assets/images/pin_red.png
  AssetGenImage get pinRed => const AssetGenImage('assets/images/pin_red.png');

  /// File path: assets/images/pin_yellow.png
  AssetGenImage get pinYellow =>
      const AssetGenImage('assets/images/pin_yellow.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        icAccount,
        icFav,
        icFavActive,
        icLightning,
        icLightningActive,
        icMap,
        icMapActive,
        icMapPin,
        icWallet,
        myLocation,
        pinBlack,
        pinGreen,
        pinRed,
        pinYellow
      ];
}

class Assets {
  Assets._();

  static const String configDev = 'assets/config_dev.json';
  static const String configProduction = 'assets/config_production.json';
  static const $AssetsI18nGen i18n = $AssetsI18nGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();

  /// List of all assets
  static List<String> get values => [configDev, configProduction];
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
