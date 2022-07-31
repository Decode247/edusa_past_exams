import 'package:edusa_past_exams/core/imports/imports.dart';

Widget term3Papers() {
  var data = {'whichTerm': 'term3'};
  return ListView(
    children: [
      const SizedBox(height: 35),
      button(
        onPressed: () {
          Get.toNamed(
            '/viewers',
            arguments: {
              'data': data,
              'title': 'Term 3 2021',
              'qPath': 'assets/term3/questions/EC_P1_Q_21.pdf',
              'mPath': 'assets/term3/memos/EC_P1_M_21.pdf',
            },
          );
        },
        title: 'EC P1 2021',
      ),
      const SizedBox(height: 35),
      button(
        onPressed: () {
          Get.toNamed(
            '/viewers',
            arguments: {
              'data': data,
              'title': 'Term 3 2021',
              'qPath': 'assets/term3/questions/EC_P2_Q_21.pdf',
              'mPath': 'assets/term3/memos/EC_P2_M_21.pdf',
            },
          );
        },
        title: 'EC P2 2021',
      ),
      const SizedBox(height: 35),
      button(
        onPressed: () {
          Get.toNamed(
            '/viewers',
            arguments: {
              'data': data,
              'title': 'Term 3 2021',
              'qPath': 'assets/term3/questions/FS_P1_Q_21.pdf',
              'mPath': 'assets/term3/memos/FS_P1_M_21.pdf',
            },
          );
        },
        title: 'FS P1 2021',
      ),
      const SizedBox(height: 35),
      button(
        onPressed: () {
          Get.toNamed(
            '/viewers',
            arguments: {
              'data': data,
              'title': 'Term 3 2021',
              'qPath': 'assets/term3/questions/GP_P1_Q_21.pdf',
              'mPath': 'assets/term3/memos/GO_P1_M_21.pdf',
            },
          );
        },
        title: 'GP P1 2021',
      ),
      const SizedBox(height: 35),
      button(
        onPressed: () {
          Get.toNamed(
            '/viewers',
            arguments: {
              'data': data,
              'title': 'Term 3 2021',
              'qPath': 'assets/term3/questions/GP_P2_Q_21.pdf',
              'mPath': 'assets/term3/memos/GP_P2_M_21.pdf',
            },
          );
        },
        title: 'GP P2 2021',
      ),
      const SizedBox(height: 35),
      button(
        onPressed: () {
          Get.toNamed(
            '/viewers',
            arguments: {
              'data': data,
              'title': 'Term 3 2021',
              'qPath': 'assets/term3/questions/KZN_P1_Q_21.pdf',
              'mPath': 'assets/term3/memos/KZN_P1_M_21.pdf',
            },
          );
        },
        title: 'KZN P1 2021',
      ),
      const SizedBox(height: 35),
      button(
        onPressed: () {
          Get.toNamed(
            '/viewers',
            arguments: {
              'data': data,
              'title': 'Term 3 2021',
              'qPath': 'assets/term3/questions/LP_P1_Q_21.pdf',
              'mPath': 'assets/term3/memos/LP_P1_M_21.pdf',
            },
          );
        },
        title: 'LP P1 2021',
      ),
      const SizedBox(height: 35),
      button(
        onPressed: () {
          Get.toNamed(
            '/viewers',
            arguments: {
              'data': data,
              'title': 'Term 3 2021',
              'qPath': 'assets/term3/questions/MP_P1_Q_21.pdf',
              'mPath': 'assets/term3/memos/MP_P1_M_21.pdf',
            },
          );
        },
        title: 'MP P1 2021',
      ),
      const SizedBox(height: 35),
      button(
        onPressed: () {
          Get.toNamed(
            '/viewers',
            arguments: {
              'data': data,
              'title': 'Term 3 2021',
              'qPath': 'assets/term3/questions/NC_P1_Q_21.pdf',
              'mPath': 'assets/term3/memos/NC_P1_M_21.pdf',
            },
          );
        },
        title: 'NC P1 2021',
      ),
      const SizedBox(height: 35),
      button(
        onPressed: () {
          Get.toNamed(
            '/viewers',
            arguments: {
              'data': data,
              'title': 'Term 3 2021',
              'qPath': 'assets/term3/questions/NW_P1_Q_21.pdf',
              'mPath': 'assets/term3/memos/NW_P1_M_21.pdf',
            },
          );
        },
        title: 'NW P1 2021',
      ),
    ],
  );
}
