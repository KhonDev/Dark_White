import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:white_dark/home_screen.dart';
import 'package:white_dark/models/my_theme_provider.dart';
import 'package:white_dark/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyThemeModel(),
      child: Consumer<MyThemeModel>(
        builder: (context, theme, child) => MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Analog Clock',
          theme: themeData(context),
          darkTheme: darkThemeData(context),
          themeMode: theme.isLightTheme ? ThemeMode.dark : ThemeMode.light,
          home: HomeScreen(),
        ),
      ),
    );
  }
}
