import 'dart:io';

import 'localization_all_items.dart';
import 'localization_item.dart';

abstract class LocalizationConfig {
  static LocalizationItem _selectedLanguage =
      AllItemsOfLocalization().getEnglish();
  static final List<LocalizationItem> _languages =
      AllItemsOfLocalization().getAll();

  static LocalizationItem currentLang() => _selectedLanguage;
  static List<LocalizationItem> allLang() => _languages;

  static void setLanguageBySystemLocate() {
    final String defaultLocale = Platform.localeName;

    for (var lang in _languages) {
      if (defaultLocale == lang.language) {
        _selectedLanguage = lang;
        break;
      }
    }
  }
}
