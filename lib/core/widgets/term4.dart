import 'package:edusa_past_exams/core/imports/imports.dart';

List<Widget> term4Papers({var data}) {
  var qPath = data['path'];
  var mPath = data['path'];
  var title = data['title'];
  var isV16 = false.obs;
  var isV17 = false.obs;
  var isV18 = false.obs;
  var isV19 = false.obs;
  var isV20 = false.obs;
  var isV21 = false.obs;
  var isV22 = false.obs;
  return [
    button(
      title: '2016',
      onPressed: () {
        isV16.toggle();
        isV17.value = false;
        isV18.value = false;
        isV19.value = false;
        isV20.value = false;
        isV21.value = false;
        isV22.value = false;
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
        isV19.value = false;
        isV20.value = false;
        isV21.value = false;
        isV22.value = false;
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
        isV19.value = false;
        isV20.value = false;
        isV21.value = false;
        isV22.value = false;
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
    button(
      title: '2019',
      onPressed: () {
        isV19.toggle();
        isV17.value = false;
        isV18.value = false;
        isV16.value = false;
        isV20.value = false;
        isV21.value = false;
        isV22.value = false;
      },
    ),
    SizedBox(height: isV19.value ? 0 : 15),
    Obx(
      () => Visibility(
        visible: isV19.value,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            button(
              title: 'Paper 1',
              onPressed: () {
                qPath = qPath + 'questions/P1_Q_19.pdf';
                mPath = mPath + 'memos/P1_M_19.pdf';

                Get.offAllNamed(
                  '/viewers',
                  arguments: {
                    'title': title + '2019',
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
                qPath = qPath + 'questions/P2_Q_19.pdf';
                mPath = mPath + 'memos/P2_M_19.pdf';
                Get.offAllNamed(
                  '/viewers',
                  arguments: {
                    'title': title + '2019',
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
    Obx(() => SizedBox(height: isV19.value ? 30 : 15)),
    button(
      title: '2020',
      onPressed: () {
        isV20.toggle();
        isV17.value = false;
        isV18.value = false;
        isV19.value = false;
        isV16.value = false;
        isV21.value = false;
        isV22.value = false;
      },
    ),
    SizedBox(height: isV20.value ? 0 : 15),
    Obx(
      () => Visibility(
        visible: isV20.value,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            button(
              title: 'Paper 1',
              onPressed: () {
                qPath = qPath + 'questions/P1_Q_20.pdf';
                mPath = mPath + 'memos/P1_M_20.pdf';

                Get.offAllNamed(
                  '/viewers',
                  arguments: {
                    'title': title + '2020',
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
                qPath = qPath + 'questions/P2_Q_20.pdf';
                mPath = mPath + 'memos/P2_M_20.pdf';
                Get.offAllNamed(
                  '/viewers',
                  arguments: {
                    'title': title + '2020',
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
    Obx(() => SizedBox(height: isV20.value ? 30 : 15)),
    button(
      title: '2021',
      onPressed: () {
        isV21.toggle();
        isV17.value = false;
        isV18.value = false;
        isV19.value = false;
        isV20.value = false;
        isV16.value = false;
        isV22.value = false;
      },
    ),
    SizedBox(height: isV21.value ? 0 : 15),
    Obx(
      () => Visibility(
        visible: isV21.value,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            button(
              title: 'Paper 1',
              onPressed: () {
                qPath = qPath + 'questions/P1_Q_21.pdf';
                mPath = mPath + 'memos/P1_M_21.pdf';

                Get.offAllNamed(
                  '/viewers',
                  arguments: {
                    'title': title + '2021',
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
                qPath = qPath + 'questions/P2_Q_21.pdf';
                mPath = mPath + 'memos/P2_M_21.pdf';
                Get.offAllNamed(
                  '/viewers',
                  arguments: {
                    'title': title + '2021',
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
  ];
}
