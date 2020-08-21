abstract class IWebPage {
  String getContent();
}

class About implements IWebPage {
  final ITheme theme;
  About(this.theme);

  @override
  String getContent() => 'About page in ${theme.getColor()}';
}

class Home implements IWebPage {
  final ITheme theme;
  Home(this.theme);

  @override
  String getContent() => 'Home page in ${theme.getColor()}';
}

abstract class ITheme {
  String getColor();
}

class DarkTheme implements ITheme {
  @override
  String getColor() => 'Dark Theme';
}

class LightTheme implements ITheme {
  @override
  String getColor() => 'Light Theme';
}
