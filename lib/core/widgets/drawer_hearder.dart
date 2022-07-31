import 'package:edusa_past_exams/core/imports/imports.dart';

Widget hearder() => Card(
      color: Colors.white54,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Icon(
              Icons.person,
              size: 100,
            ),
            Text('Compiled by : Mpakathi Bayanda'),
            SizedBox(height: 20),
            Text('Whatsapp Number: 0639145048'),
            SizedBox(height: 20),
            Text('Group Link: this is a link to whatsapps'),
            SizedBox(height: 20),
            Text('Page Link: this is a link to Facebook page'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
