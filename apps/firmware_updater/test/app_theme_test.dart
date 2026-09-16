import 'package:firmware_updater/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yaru/yaru.dart';

void main() {
  group('font fallbacks', () {
    test('prefers the active CJK locale', () {
      for (final testCase in [
        (locale: const Locale('ja'), expected: 'Noto Sans CJK JP'),
        (locale: const Locale('ko'), expected: 'Noto Sans CJK KR'),
        (locale: const Locale('zh'), expected: 'Noto Sans CJK SC'),
        (locale: const Locale('zh', 'TW'), expected: 'Noto Sans CJK TC'),
        (locale: const Locale('zh', 'HK'), expected: 'Noto Sans CJK HK'),
        (
          locale: const Locale.fromSubtags(
            languageCode: 'zh',
            scriptCode: 'Hant',
          ),
          expected: 'Noto Sans CJK TC',
        ),
      ]) {
        final theme = yaruLight.withFontFallbacks(locale: testCase.locale);

        expect(
          theme.textTheme.bodyMedium!.fontFamilyFallback!.first,
          testCase.expected,
        );
      }
    });

    test('preserves preferred locale subtags', () {
      const preferredLocale = Locale.fromSubtags(
        languageCode: 'zh',
        scriptCode: 'Hant',
        countryCode: 'HK',
      );

      expect(resolveFontLocale([preferredLocale]), preferredLocale);
    });

    test('applies to Yaru component text styles', () {
      final theme = yaruLight.withFontFallbacks(locale: const Locale('ja'));
      final fallback = theme.textTheme.bodyMedium!.fontFamilyFallback;

      expect(
        _textStylesOf(theme).map((style) => style.fontFamilyFallback),
        everyElement(fallback),
      );
    });
  });
}

Iterable<TextStyle> _textStylesOf(ThemeData theme) sync* {
  yield* _textThemeStyles(theme.textTheme);
  yield* _textThemeStyles(theme.primaryTextTheme);
  yield* [
    theme.appBarTheme.toolbarTextStyle,
    theme.appBarTheme.titleTextStyle,
    theme.navigationRailTheme.selectedLabelTextStyle,
    theme.navigationRailTheme.unselectedLabelTextStyle,
    theme.listTileTheme.titleTextStyle,
    theme.listTileTheme.subtitleTextStyle,
    theme.listTileTheme.leadingAndTrailingTextStyle,
    theme.chipTheme.labelStyle,
    theme.chipTheme.secondaryLabelStyle,
    theme.menuButtonTheme.style?.textStyle?.resolve({}),
    theme.snackBarTheme.contentTextStyle,
    theme.dropdownMenuTheme.textStyle,
  ].whereType<TextStyle>();
  yield* _inputDecorationStyles(theme.inputDecorationTheme);
  final dropdownInputTheme = theme.dropdownMenuTheme.inputDecorationTheme;
  if (dropdownInputTheme != null) {
    yield* _inputDecorationStyles(dropdownInputTheme);
  }
}

Iterable<TextStyle> _textThemeStyles(TextTheme theme) => [
  theme.displayLarge,
  theme.displayMedium,
  theme.displaySmall,
  theme.headlineLarge,
  theme.headlineMedium,
  theme.headlineSmall,
  theme.titleLarge,
  theme.titleMedium,
  theme.titleSmall,
  theme.bodyLarge,
  theme.bodyMedium,
  theme.bodySmall,
  theme.labelLarge,
  theme.labelMedium,
  theme.labelSmall,
].whereType<TextStyle>();

Iterable<TextStyle> _inputDecorationStyles(InputDecorationThemeData theme) => [
  theme.labelStyle,
  theme.floatingLabelStyle,
  theme.helperStyle,
  theme.hintStyle,
  theme.errorStyle,
  theme.prefixStyle,
  theme.suffixStyle,
  theme.counterStyle,
].whereType<TextStyle>();
