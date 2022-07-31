import 'package:edusa_past_exams/core/imports/imports.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppTheme theme = AppTheme();
    return GetMaterialApp(
      title: 'Edusa',
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome',
      getPages: [
        GetPage(
          name: '/welcome',
          page: () => Welcome(),
        ),
        GetPage(
          name: '/study',
          page: () => StudyMaterial(),
        ),
        GetPage(
          name: '/tutor',
          page: () => Tutor(),
        ),
        GetPage(
          name: '/past_papers',
          page: () => Home(),
        ),
        GetPage(
          name: '/viewers',
          page: () => const Viewers(),
        ),
        GetPage(
          name: '/term1',
          page: () => const Term1(),
        ),
        GetPage(
          name: '/term2',
          page: () => const Term2(),
        ),
        GetPage(
          name: '/term3',
          page: () => Term3(),
        ),
        GetPage(
          name: '/term4',
          page: () => const Term4(),
        ),
      ],
      theme: theme.theme,
    );
  }
}

//'ca-app-pub-6775397213739769/2880287278',
//"ca-app-pub-6775397213739769/5381223885",
