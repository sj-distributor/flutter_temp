/*
 * @Author: Marlon.M
 * @Email: maiguangyang@163.com
 * @Date: 2024-06-17 10:41:43
 */
import 'package:flutter/material.dart';
import 'package:flutter_temp/abstracts/index.dart';

ThemeData createLightTheme({
  required Brightness type,
  required IThemeStore themeStore,
}) {
  return ThemeData(
    fontFamily: 'CustomFonts',
    brightness: type == Brightness.light ? Brightness.light : Brightness.dark,
    useMaterial3: true,
    primaryColor: themeStore.color.primary,
    colorScheme: type == Brightness.light
        ? ColorScheme.light(
            primary: themeStore.textPrimaryColor,
            surface: themeStore.backgroundColor,
          )
        : ColorScheme.dark(
            primary: themeStore.textPrimaryColor,
            surface: themeStore.backgroundColor,
          ),
    iconTheme: IconThemeData(
      color: themeStore.iconColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: themeStore.primaryColor,
      iconTheme: IconThemeData(
        size: themeStore.fontSizeLarge,
        color: themeStore.color.darkGray,
      ),
      titleTextStyle: TextStyle(
        fontSize: themeStore.fontSizeMedium,
        fontWeight: themeStore.fontWeightBold,
        color: themeStore.textPrimaryColor,
      ),
      scrolledUnderElevation: 0.0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: themeStore.primaryColor,
      selectedIconTheme: IconThemeData(
        color: themeStore.red,
      ),
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: themeStore.backgroundColor,
      indicatorColor: themeStore.primaryColor,
      labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>((states) {
        if (states.contains(WidgetState.selected)) {
          return TextStyle(color: themeStore.primaryColor); // 选中时的文字颜色
        }
        return TextStyle(color: themeStore.textSecondaryColor); // 未选中时的文字颜色
      }),
      iconTheme: WidgetStateProperty.resolveWith<IconThemeData>((states) {
        if (states.contains(WidgetState.selected)) {
          return IconThemeData(color: themeStore.color.white); // 选中时的图标颜色
        }
        return IconThemeData(color: themeStore.textSecondaryColor); // 未选中时的图标颜色
      }),
    ),
    textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: themeStore.fontSizeLarge,
          fontWeight: themeStore.fontWeightBold,
          color: themeStore.textPrimaryColor,
        ),
        titleMedium: TextStyle(
          fontSize: themeStore.fontSizeMedium,
          fontWeight: themeStore.fontWeightBold,
          color: themeStore.textPrimaryColor,
        )),
    dividerTheme: DividerThemeData(
      color: themeStore.borderPrimaryColor,
    ),
    scaffoldBackgroundColor: themeStore.backgroundColor,
    datePickerTheme: DatePickerThemeData(
      backgroundColor: themeStore.backgroundColor,
      surfaceTintColor: themeStore.backgroundColor,
    ),
    tabBarTheme: const TabBarTheme(
      dividerColor: Colors.transparent,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: themeStore.textPrimaryColor,
      disabledColor: themeStore.color.shade500,
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.macOS: NoTransitionPageTransitionsBuilder(),
      },
    ),
  );
}

// 重写路由跳转的动画
class NoTransitionPageTransitionsBuilder extends PageTransitionsBuilder {
  const NoTransitionPageTransitionsBuilder();

  @override
  Widget buildTransitions<String>(
    PageRoute route,
    BuildContext context,
    Animation animation,
    Animation secondaryAnimation,
    Widget child,
  ) {
    return child;
  }
}
