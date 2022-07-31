import 'package:edusa_past_exams/core/imports/imports.dart';

class Term3 extends StatelessWidget {
  Term3({Key? key}) : super(key: key);
  final adCtrl = Get.put(AdCtrl(screen: '/welcome'));

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        bool willPop = true;
        Get.offAllNamed('/past_papers');
        return willPop;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Get.offAllNamed(
              '/past_papers',
            ),
          ),
          title: const Text(
            'Select A Paper',
          ),
        ),
        body: term3Papers(),
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
