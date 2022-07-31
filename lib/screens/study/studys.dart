// ignore_for_file: must_be_immutable

import 'package:edusa_past_exams/core/imports/imports.dart';

// class Studys extends StatelessWidget {
//   Studys({Key? key}) : super(key: key);

//   final adCtrl = Get.put(AdCtrl(screen: '/welcome'));

//   Map<String, dynamic> urls = {
//     'Statistics Guide':
//         'https://edwardsmaths.com/download/grade-12-mathematics-study-guide-statistics-2020/',
//     'Functions Guide':
//         'https://edwardsmaths.com/download/grade-12-mathematics-functions/',
//     'Analytic Geometry Guide':
//         'https://edwardsmaths.com/download/grade-12-self-study-guide-dbe/',
//     'Euclidean Geometry Guide':
//         'https://edwardsmaths.com/download/grade-12-mathematics-study-guide-geometry/',
//     'Trigonometric Guide':
//         'https://edwardsmaths.com/download/grade-12-self-study-guide-dbe/',
//     'Math Clinic':
//         'https://edwardsmaths.com/download/grade-12-study-guide-math-clinic/',
//     'Mind The Gap':
//         'https://edwardsmaths.com/download/grade-12-mathematics-study-guide/',
//     'Booklet':
//         'https://edwardsmaths.com/download/grade-12-study-guide-eastern-cape-booklet-1/',
//   };

//   @override
//   Widget build(BuildContext context) {
//     final List<String> keys = urls.keys.toList();
//     final values = urls.values.toList();
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: ListView.separated(
//         itemBuilder: (context, index) => button(
//           title: keys[index],
//           onPressed: () async {
//             final url = Uri.parse(values[index]);
//             if (await canLaunchUrl(url)) {
//               await launchUrl(
//                 url,
//                 mode: LaunchMode.externalApplication,
//               );
//             }
//           },
//         ),
//         separatorBuilder: (context, index) {
//           return const SizedBox(height: 40);
//         },
//         itemCount: values.length,
//       ),
//     );
//   }
// }

Widget studys() {
  Map<String, dynamic> urls = {
    'Statistics Guide':
        'https://edwardsmaths.com/download/grade-12-mathematics-study-guide-statistics-2020/',
    'Functions Guide':
        'https://edwardsmaths.com/download/grade-12-mathematics-functions/',
    'Analytic Geometry Guide':
        'https://edwardsmaths.com/download/grade-12-self-study-guide-dbe/',
    'Euclidean Geometry Guide':
        'https://edwardsmaths.com/download/grade-12-mathematics-study-guide-geometry/',
    'Trigonometric Guide':
        'https://edwardsmaths.com/download/grade-12-self-study-guide-dbe/',
    'Math Clinic':
        'https://edwardsmaths.com/download/grade-12-study-guide-math-clinic/',
    'Mind The Gap':
        'https://edwardsmaths.com/download/grade-12-mathematics-study-guide/',
    'Booklet':
        'https://edwardsmaths.com/download/grade-12-study-guide-eastern-cape-booklet-1/',
  };
  final List<String> keys = urls.keys.toList();
  final values = urls.values.toList();
  return ListView.separated(
    itemBuilder: (context, index) => button(
      title: keys[index],
      size: 0,
      onPressed: () async {
        final url = Uri.parse(values[index]);
        if (await canLaunchUrl(url)) {
          await launchUrl(
            url,
            mode: LaunchMode.externalApplication,
          );
        }
      },
    ),
    separatorBuilder: (context, index) {
      return const SizedBox(height: 40);
    },
    itemCount: values.length,
  );
}
