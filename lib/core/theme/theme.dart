import 'package:edusa_past_exams/core/imports/imports.dart';

class AppTheme {
  Color myOrange1 = Colors.deepOrange;
  Color myOrange2 = const Color.fromARGB(255, 255, 87, 34);
  Color myWhite = const Color.fromARGB(255, 244, 236, 236);
  Color myBlack = const Color.fromARGB(255, 26, 23, 23);

  ThemeData theme = ThemeData(
    primarySwatch: Colors.deepOrange,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.deepOrange,
    ),
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.dark,
  );
}
