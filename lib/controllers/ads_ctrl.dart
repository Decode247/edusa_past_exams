import 'package:edusa_past_exams/core/imports/imports.dart';

class AdCtrl extends GetxController {
  AdCtrl({this.screen = ''}) {
    _initInterstitialAd();
  }
  String screen;
  late BannerAd myBanner;
  late InterstitialAd myInterstitialAd;
  var isBannerLoaded = false.obs;
  var isInterstitialLoaded = false.obs;

  @override
  void onInit() {
    super.onInit();
    _initBanner();
    _initInterstitialAd();
  }

  _initBanner() {
    myBanner = BannerAd(
      adUnitId: 'ca-app-pub-6775397213739769/1991932775',
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          isBannerLoaded(true);
        },
        onAdFailedToLoad: ((ad, error) {
          myBanner.dispose();
        }),
      ),
    );
    myBanner.load();
  }

  void _initInterstitialAd() {
    InterstitialAd.load(
      adUnitId: "ca-app-pub-6775397213739769/5381223885",
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: onAdLoadedInterstitialAd,
        onAdFailedToLoad: (error) {},
      ),
    );
  }

  void onAdLoadedInterstitialAd(InterstitialAd ad) {
    myInterstitialAd = ad;
    isInterstitialLoaded(true);

    myInterstitialAd.fullScreenContentCallback =
        FullScreenContentCallback(onAdDismissedFullScreenContent: (ad) {
      Get.offNamed(screen);
      myInterstitialAd.dispose();
    }, onAdFailedToShowFullScreenContent: (ad, error) {
      if (screen != '') {
        Get.offNamed(screen);
      }
      myInterstitialAd.dispose();
    });
  }
}
