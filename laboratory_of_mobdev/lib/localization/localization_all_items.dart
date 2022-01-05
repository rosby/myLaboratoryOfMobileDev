import 'localization_item.dart';

class AllItemsOfLocalization {
  List<LocalizationItem> getAll() => <LocalizationItem>[_english, _russian];
  LocalizationItem getRussian() => _russian;
  LocalizationItem getEnglish() => _english;

  final LocalizationItem _english = LocalizationItem(
      language: 'en_US',
      fontFamily: 'Quicksand-Bold',
      welcomeText: 'Welcome to laboratory\n         of MobileDev',
      enterButtonText: 'Enter');
  final LocalizationItem _russian = LocalizationItem(
      language: 'ru_RU',
      fontFamily: 'Comfortaa-Bold',
      welcomeText:
          '      Добро пожаловать\n         в лабораторию\n  мобильной разработки',
      enterButtonText: 'Войти');
}
