import 'package:edusa_past_exams/core/imports/imports.dart';

class AdCtrl extends GetxController {
  AdCtrl({this.screen = ''}) {
    _initInterstitialAd();
  }
  String screen;
  late BannerAd myBanner;
  late BannerAd myInLineBanner;
  late InterstitialAd myInterstitialAd;
  var isBannerLoaded = false.obs;
  var isInLineBannerLoaded = false.obs;
  var isInterstitialLoaded = false.obs;

  @override
  void onInit() {
    super.onInit();
    _initBanner();
    _initInterstitialAd();
    _initInLineBanner();
  }

  _initBanner() {
    myBanner = BannerAd(
      adUnitId: 'ca-app-pub-3940256099942544/6300978111', //test ad id
      //'ca-app-pub-6775397213739769/2880287278',
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

  //2874679735

  _initInLineBanner() {
    myInLineBanner = BannerAd(
      adUnitId: 'ca-app-pub-6775397213739769/2880287278',
      size: AdSize.mediumRectangle,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          isInLineBannerLoaded(true);
        },
        onAdFailedToLoad: ((ad, error) {
          myInLineBanner.dispose();
        }),
      ),
    );
    myInLineBanner.load();
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
