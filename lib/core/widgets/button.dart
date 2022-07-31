import 'package:edusa_past_exams/core/imports/imports.dart';

Widget button({
  required String title,
  required Function() onPressed,
  double size = 80,
}) =>
    MaterialButton(
      padding: EdgeInsets.symmetric(horizontal: size),
      onPressed: onPressed,
      color: Colors.deepOrange,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(title),
    );
