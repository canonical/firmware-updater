import 'package:collection/collection.dart';
import 'package:firmware_updater/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

Locale resolveFontLocale(List<Locale>? preferredLocales) {
  final resolvedLocale = basicLocaleListResolution(
    preferredLocales,
    AppLocalizations.supportedLocales,
  );
  return preferredLocales
          ?.where(
            (locale) => locale.languageCode == resolvedLocale.languageCode,
          )
          .firstOrNull ??
      resolvedLocale;
}

extension FirmwareUpdaterThemeX on ThemeData {
  ThemeData withFontFallbacks({required Locale locale}) {
    final cjkFallback = _cjkFallbackFor(locale);

    TextStyle? withFallback(TextStyle? style) =>
        style?.apply(fontFamilyFallback: cjkFallback);

    InputDecorationThemeData withInputFallback(
      InputDecorationThemeData theme,
    ) => theme.copyWith(
      labelStyle: withFallback(theme.labelStyle),
      floatingLabelStyle: withFallback(theme.floatingLabelStyle),
      helperStyle: withFallback(theme.helperStyle),
      hintStyle: withFallback(theme.hintStyle),
      errorStyle: withFallback(theme.errorStyle),
      prefixStyle: withFallback(theme.prefixStyle),
      suffixStyle: withFallback(theme.suffixStyle),
      counterStyle: withFallback(theme.counterStyle),
    );

    WidgetStateProperty<TextStyle?>? withStateFallback(
      WidgetStateProperty<TextStyle?>? style,
    ) => style == null
        ? null
        : WidgetStateProperty.resolveWith(
            (states) => withFallback(style.resolve(states)),
          );

    return copyWith(
      textTheme: textTheme.apply(fontFamilyFallback: cjkFallback),
      primaryTextTheme: primaryTextTheme.apply(
        fontFamilyFallback: cjkFallback,
      ),
      appBarTheme: appBarTheme.copyWith(
        toolbarTextStyle: withFallback(appBarTheme.toolbarTextStyle),
        titleTextStyle: withFallback(appBarTheme.titleTextStyle),
      ),
      navigationRailTheme: navigationRailTheme.copyWith(
        selectedLabelTextStyle: withFallback(
          navigationRailTheme.selectedLabelTextStyle,
        ),
        unselectedLabelTextStyle: withFallback(
          navigationRailTheme.unselectedLabelTextStyle,
        ),
      ),
      listTileTheme: listTileTheme.copyWith(
        titleTextStyle: withFallback(listTileTheme.titleTextStyle),
        subtitleTextStyle: withFallback(listTileTheme.subtitleTextStyle),
        leadingAndTrailingTextStyle: withFallback(
          listTileTheme.leadingAndTrailingTextStyle,
        ),
      ),
      chipTheme: chipTheme.copyWith(
        labelStyle: withFallback(chipTheme.labelStyle),
        secondaryLabelStyle: withFallback(chipTheme.secondaryLabelStyle),
      ),
      menuButtonTheme: MenuButtonThemeData(
        style: menuButtonTheme.style?.copyWith(
          textStyle: withStateFallback(menuButtonTheme.style?.textStyle),
        ),
      ),
      snackBarTheme: snackBarTheme.copyWith(
        contentTextStyle: withFallback(snackBarTheme.contentTextStyle),
      ),
      dropdownMenuTheme: dropdownMenuTheme.copyWith(
        textStyle: withFallback(dropdownMenuTheme.textStyle),
        inputDecorationTheme: dropdownMenuTheme.inputDecorationTheme == null
            ? null
            : withInputFallback(dropdownMenuTheme.inputDecorationTheme!),
      ),
      inputDecorationTheme: withInputFallback(inputDecorationTheme),
    );
  }
}

List<String> _cjkFallbackFor(Locale locale) {
  const simplifiedChinese = 'Noto Sans CJK SC';
  const traditionalChinese = 'Noto Sans CJK TC';
  const hongKongChinese = 'Noto Sans CJK HK';
  const japanese = 'Noto Sans CJK JP';
  const korean = 'Noto Sans CJK KR';

  return switch ((locale.languageCode, locale.scriptCode, locale.countryCode)) {
    ('ja', _, _) => const [
      japanese,
      simplifiedChinese,
      traditionalChinese,
      hongKongChinese,
      korean,
    ],
    ('ko', _, _) => const [
      korean,
      simplifiedChinese,
      traditionalChinese,
      hongKongChinese,
      japanese,
    ],
    ('zh', _, 'HK') => const [
      hongKongChinese,
      traditionalChinese,
      simplifiedChinese,
      japanese,
      korean,
    ],
    ('zh', 'Hant', _) || ('zh', _, 'TW') => const [
      traditionalChinese,
      hongKongChinese,
      simplifiedChinese,
      japanese,
      korean,
    ],
    _ => const [
      simplifiedChinese,
      traditionalChinese,
      hongKongChinese,
      japanese,
      korean,
    ],
  };
}
