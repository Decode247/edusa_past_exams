// ignore_for_file: empty_catches

import 'package:edusa_past_exams/core/imports/imports.dart';

class StudyMaterial extends StatelessWidget {
  const StudyMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final adCtrl = Get.put(AdCtrl(screen: '/welcome'));
    return WillPopScope(
      onWillPop: () async {
        try {
          if (adCtrl.isInterstitialLoaded(true)) {
            adCtrl.myInterstitialAd.show();
          }
        } catch (err) {}
        bool willPop = true;
        Get.offAllNamed('/welcome');
        return willPop;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Study Material'),
          centerTitle: true,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              try {
                if (adCtrl.isInterstitialLoaded(true)) {
                  adCtrl.myInterstitialAd.show();
                }
              } catch (err) {}
              Get.offAllNamed(
                '/welcome',
              );
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(60),
          child: studys(),
        ),
        bottomNavigationBar: adCtrl.isBannerLoaded(true)
            ? SizedBox(
                height: adCtrl.myBanner.size.height.toDouble(),
                width: adCtrl.myBanner.size.width.toDouble(),
                child: AdWidget(
                  ad: adCtrl.myBanner,
                ),
              )
            : const SizedBox(),
      ),
    );
  }
}
