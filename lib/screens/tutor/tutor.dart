// ignore_for_file: empty_catches

import 'package:edusa_past_exams/core/imports/imports.dart';

class Tutor extends StatelessWidget {
  Tutor({Key? key}) : super(key: key);
  final adCtrl = Get.put(AdCtrl(screen: '/welcome'));

  @override
  Widget build(BuildContext context) {
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
          padding: const EdgeInsets.all(40.0),
          child: Center(child: tutorCard()),
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
