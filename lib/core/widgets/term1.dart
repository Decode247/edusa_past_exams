import 'package:edusa_past_exams/core/imports/imports.dart';

List<Widget> term1Papers({var data}) {
  var qPath = data['path'];
  var mPath = data['path'];
  var title = data['title'];
  var isV16 = false.obs;
  var isV17 = false.obs;
  var isV18 = false.obs;
  var isV14 = false.obs;
  var isV15 = false.obs;
  return [
    button(
      title: '2014',
      onPressed: () {
        isV14.toggle();
        isV17.value = false;
        isV18.value = false;
        isV16.value = false;
        isV15.value = false;
      },
    ),
    SizedBox(height: isV14.value ? 0 : 15),
    Obx(
      () => Visibility(
        visible: isV14.value,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            button(
              title: 'Paper 1',
              onPressed: () {
                qPath = qPath + 'questions/P1_Q_14.pdf';
                mPath = mPath + 'memos/P1_M_14.pdf';

                Get.offAllNamed(
                  '/viewers',
                  arguments: {
                    'title': title + '2014',
                    'data': data,
                    'qPath': qPath,
                    'mPath': mPath,
                  },
                );
              },
              size: 11,
            ),
            const SizedBox(width: 10),
            button(
              title: 'Paper 2',
              onPressed: () {
                qPath = qPath + 'questions/P2_Q_14.pdf';
                mPath = mPath + 'memos/P2_M_14.pdf';
                Get.offAllNamed(
                  '/viewers',
                  arguments: {
                    'title': title + '2014',
                    'data': data,
                    'qPath': qPath,
                    'mPath': mPath
                  },
                );
              },
              size: 11,
            ),
          ],
        ),
      ),
    ),
    Obx(() => SizedBox(height: isV14.value ? 30 : 15)),
    button(
      title: '2015',
      onPressed: () {
        isV15.toggle();
        isV17.value = false;
        isV18.value = false;
        isV14.value = false;
        isV16.value = false;
      },
    ),
    SizedBox(height: isV15.value ? 0 : 15),
    Obx(
      () => Visibility(
        visible: isV15.value,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            button(
              title: 'Paper 1',
              onPressed: () {
                qPath = qPath + 'questions/P1_Q_15.pdf';
                mPath = mPath + 'memos/P1_M_15.pdf';

                Get.offAllNamed(
                  '/viewers',
                  arguments: {
                    'title': title + '2015',
                    'data': data,
                    'qPath': qPath,
                    'mPath': mPath
                  },
                );
              },
              size: 11,
            ),
            const SizedBox(width: 10),
            button(
              title: 'Paper 2',
              onPressed: () {
                qPath = qPath + 'questions/P2_Q_15.pdf';
                mPath = mPath + 'memos/P2_M_15.pdf';
                Get.offAllNamed(
                  '/viewers',
                  arguments: {
                    'title': title + '2015',
                    'data': data,
                    'qPath': qPath,
                    'mPath': mPath
                  },
                );
              },
              size: 11,
            ),
          ],
        ),
      ),
    ),
    Obx(() => SizedBox(height: isV15.value ? 30 : 15)),
    button(
      title: '2016',
      onPressed: () {
        isV16.toggle();
        isV17.value = false;
        isV18.value = false;
        isV14.value = false;
        isV15.value = false;
      },
    ),
    SizedBox(height: isV16.value ? 0 : 15),
    Obx(
      () => Visibility(
        visible: isV16.value,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            button(
              title: 'Paper 1',
              onPressed: () {
                qPath = qPath + 'questions/P1_Q_16.pdf';
                mPath = mPath + 'memos/P1_M_16.pdf';

                Get.offAllNamed(
                  '/viewers',
                  arguments: {
                    'title': title + '2016',
                    'data': data,
                    'qPath': qPath,
                    'mPath': mPath
                  },
                );
              },
              size: 11,
            ),
            const SizedBox(width: 10),
            button(
              title: 'Paper 2',
              onPressed: () {
                qPath = qPath + 'questions/P2_Q_16.pdf';
                mPath = mPath + 'memos/P2_M_16.pdf';
                Get.offAllNamed(
                  '/viewers',
                  arguments: {
                    'title': title + '2016',
                    'data': data,
                    'qPath': qPath,
                    'mPath': mPath
                  },
                );
              },
              size: 11,
            ),
          ],
        ),
      ),
    ),
    Obx(() => SizedBox(height: isV16.value ? 30 : 15)),
    button(
      title: '2017',
      onPressed: () {
        isV17.toggle();
        isV16.value = false;
        isV18.value = false;
        isV14.value = false;
        isV15.value = false;
      },
    ),
    SizedBox(height: isV17.value ? 0 : 15),
    Obx(
      () => Visibility(
        visible: isV17.value,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            button(
              title: 'Paper 1',
              onPressed: () {
                qPath = qPath + 'questions/P1_Q_17.pdf';
                mPath = mPath + 'memos/P1_M_17.pdf';

                Get.offAllNamed(
                  '/viewers',
                  arguments: {
                    'title': title + '2017',
                    'data': data,
                    'qPath': qPath,
                    'mPath': mPath
                  },
                );
              },
              size: 11,
            ),
            const SizedBox(width: 10),
            button(
              title: 'Paper 2',
              onPressed: () {
                qPath = qPath + 'questions/P2_Q_17.pdf';
                mPath = mPath + 'memos/P2_M_17.pdf';
                Get.offAllNamed(
                  '/viewers',
                  arguments: {
                    'title': title + '2017',
                    'data': data,
                    'qPath': qPath,
                    'mPath': mPath
                  },
                );
              },
              size: 11,
            ),
          ],
        ),
      ),
    ),
    Obx(() => SizedBox(height: isV17.value ? 30 : 15)),
    button(
      title: '2018',
      onPressed: () {
        isV18.toggle();
        isV17.value = false;
        isV16.value = false;
        isV14.value = false;
        isV15.value = false;
      },
    ),
    SizedBox(height: isV18.value ? 0 : 15),
    Obx(
      () => Visibility(
        visible: isV18.value,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            button(
              title: 'Paper 1',
              onPressed: () {
                qPath = qPath + 'questions/P1_Q_18.pdf';
                mPath = mPath + 'memos/P1_M_18.pdf';

                Get.offAllNamed(
                  '/viewers',
                  arguments: {
                    'title': title + '2018',
                    'data': data,
                    'qPath': qPath,
                    'mPath': mPath
                  },
                );
              },
              size: 11,
            ),
            const SizedBox(width: 10),
            button(
              title: 'Paper 2',
              onPressed: () {
                qPath = qPath + 'questions/P2_Q_18.pdf';
                mPath = mPath + 'memos/P2_M_18.pdf';
                Get.offAllNamed(
                  '/viewers',
                  arguments: {
                    'title': title + '2018',
                    'data': data,
                    'qPath': qPath,
                    'mPath': mPath
                  },
                );
              },
              size: 11,
            ),
          ],
        ),
      ),
    ),
    Obx(() => SizedBox(height: isV18.value ? 30 : 15)),
  ];
}
