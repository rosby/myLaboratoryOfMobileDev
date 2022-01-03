import 'localization_item.dart';

class AllItemsOfLocalization {
  List<LocalizationItem> getAll() => <LocalizationItem>[_english, _russian];
  LocalizationItem getRussian() => _russian;
  LocalizationItem getEnglish() => _english;

  final LocalizationItem _english = LocalizationItem(
      language: 'en_US',
      welcomeText: 'Welcome to laboratory\n         of MobileDev',
      enterButtonText: 'Enter');
  final LocalizationItem _russian = LocalizationItem(
      language: 'ru_RU',
      welcomeText:
          'Добро пожаловать в лабораторию\n           мобильной разработки',
      enterButtonText: 'Войти');
}
