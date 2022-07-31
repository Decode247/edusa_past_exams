// ignore_for_file: empty_catches

import 'package:edusa_past_exams/core/imports/imports.dart';
import 'package:edusa_past_exams/core/widgets/terms.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
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
          title: const Text('Past Exams Papers'),
          centerTitle: true,
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: terms,
          ),
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
