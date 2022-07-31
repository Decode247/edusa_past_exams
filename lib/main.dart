import 'package:edusa_past_exams/core/imports/imports.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  AppTheme theme = AppTheme();

  runApp(
    GetMaterialApp(
      title: 'Edusa',
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome',
      getPages: [
        GetPage(
          name: '/welcome',
          page: () => const Welcome(),
        ),
        GetPage(
          name: '/study',
          page: () => const StudyMaterial(),
        ),
        GetPage(
          name: '/tutor',
          page: () => const Tutor(),
        ),
        GetPage(
          name: '/past_papers',
          page: () => const Home(),
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
          page: () => const Term3(),
        ),
        GetPage(
          name: '/term4',
          page: () => const Term4(),
        ),
      ],
      theme: theme.theme,
    ),
  );
}
