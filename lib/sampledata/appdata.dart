class AppData {
  static final AppData _appData = new AppData._internal();

  String text;
  int age;
  String zodiac;
  String funFact;
  String pronouns;
  factory AppData() {
    return _appData;
  }
  AppData._internal();
}
final appData = AppData();