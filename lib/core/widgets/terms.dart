import 'package:edusa_past_exams/core/imports/imports.dart';

final List<Widget> terms = [
  button(
    title: 'Term 1 Papers',
    onPressed: () => Get.offAllNamed(
      '/term1',
      arguments: {
        'title': 'Term 1 ',
        'whichTerm': 'term1',
        'path': 'assets/term1/'
      },
    ),
  ),
  button(
    title: 'Term 2 Papers',
    onPressed: () => Get.offAllNamed(
      '/term2',
      arguments: {
        'title': 'Term 2 ',
        'whichTerm': 'term2',
        'path': 'assets/term2/'
      },
    ),
  ),
  button(
    title: 'Term 3 Papers',
    onPressed: () => Get.offAllNamed(
      '/term3',
      arguments: {
        'title': 'Term 3 ',
        'whichTerm': 'term3',
        'path': 'assets/term3/'
      },
    ),
  ),
  button(
    title: 'Term 4 Papers',
    onPressed: () => Get.offAllNamed(
      '/term4',
      arguments: {
        'title': 'Term 4 ',
        'whichTerm': 'term4',
        'path': 'assets/term4/'
      },
    ),
  ),
];
