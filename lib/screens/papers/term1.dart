import 'package:edusa_past_exams/core/imports/imports.dart';

class Term1 extends StatefulWidget {
  const Term1({Key? key}) : super(key: key);

  @override
  State<Term1> createState() => _Term1State();
}

class _Term1State extends State<Term1> {
  final adCtrl = Get.put(AdCtrl(screen: '/welcome'));
  @override
  Widget build(BuildContext context) {
    final data = Get.arguments;
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: term1Papers(data: data),
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
