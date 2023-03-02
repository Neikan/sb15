import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData _themeLight = ThemeData.light();

ThemeData themeLight = _themeLight.copyWith(
  appBarTheme: _appBarTheme,
  bottomNavigationBarTheme: _bottomNavigationBarTheme,
  cardTheme: _cardTheme,
  chipTheme: _chipTheme,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    primary: _colorBrand,
    secondary: _colorDark,
  ),
  dialogTheme: _dialogTheme,
  elevatedButtonTheme: _elevatedButtonTheme,
  primaryColor: _colorBrand,
  primaryColorDark: _colorBrand,
  primaryColorLight: _colorDark,
  progressIndicatorTheme: _progressIndicatorTheme,
  textSelectionTheme: _textSelectionTheme,
  textTheme: _textLight(_themeLight.textTheme),
);

TextTheme _textLight(TextTheme base) {
  return base.copyWith();
}

final _colorBrand = Colors.deepOrange[100]!;
final _colorDark = Colors.black54;
final _colorBackDialog = Colors.grey.shade400;
final _colorDisabled = Colors.black26;

final _appBarTheme = AppBarTheme(
  titleTextStyle: TextStyle(
    color: _colorBrand,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  ),
  systemOverlayStyle: SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
    statusBarBrightness: Brightness.light,
  ),
  backgroundColor: _colorDark,
  actionsIconTheme: IconThemeData(
    color: _colorBrand,
  ),
);

final _bottomNavigationBarTheme = BottomNavigationBarThemeData(
  backgroundColor: _colorDark,
  selectedItemColor: _colorBrand,
);

final _cardTheme = CardTheme(
  color: _colorBrand,
  clipBehavior: Clip.antiAliasWithSaveLayer,
  elevation: 8,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
  margin: EdgeInsets.all(12.0),
);

final _chipTheme = ChipThemeData(
  backgroundColor: _colorDark,
  labelStyle: TextStyle(
    color: Colors.white,
  ),
  elevation: 4,
  selectedColor: _colorBrand,
  disabledColor: _colorDisabled,
  showCheckmark: false,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4.0),
  ),
);

final _dialogTheme = DialogTheme(
  backgroundColor: _colorBackDialog,
  titleTextStyle: TextStyle(
    color: _colorDark,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  ),
);

final _elevatedButtonTheme = ElevatedButtonThemeData(
  style: ButtonStyle(
    textStyle: MaterialStateProperty.all<TextStyle>(
      TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    backgroundColor: MaterialStateProperty.all<Color?>(_colorBrand),
    foregroundColor: MaterialStateProperty.all<Color?>(_colorDark),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
    ),
  ),
);

final _progressIndicatorTheme = ProgressIndicatorThemeData(
  color: _colorDark,
);

final _textSelectionTheme = TextSelectionThemeData(
  cursorColor: _colorDark,
);
