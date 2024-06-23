import 'package:app_mobile_ci/pages/auth/connexion_page.dart';
import 'package:app_mobile_ci/pages/home/comptes.dart';
import 'package:app_mobile_ci/pages/home/historiques.dart';
import 'package:app_mobile_ci/pages/home/home.dart';
import 'package:app_mobile_ci/pages/home/notifications.dart';
import 'package:app_mobile_ci/pages/home/produits.dart';
import 'package:app_mobile_ci/pages/home/services.dart';
import 'package:app_mobile_ci/pages/home/virements.dart';
import 'package:app_mobile_ci/pages/configuration/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
// import 'package:flutter_localization/flutter_localization.dart';

import 'package:easy_localization/easy_localization.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'generated/locale_keys.g.dart';
// import 'lang_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
    child: const MyApp(),
    supportedLocales: [
      Locale('en', 'US'),
      Locale('fr', 'FR'),
      Locale('es', 'ES')
    ],
    path: 'assets/translations', // <-- change the path of the translation files
    fallbackLocale: Locale('en', 'US'),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSizer(builder: (context, orientation, screenType) {
      //print("context ==> $context");
      return MaterialApp(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,

        initialRoute: '/',
        routes: {
          // "/":(context) => const HomePage(),
          "/": (context) => const ConnexionPage(),
          "/virements": (context) => const VirementPage(),
          "/notifications": (context) => const NotificationPage(),
          "/historiques": (context) => const HistoriquePage(),
          "/services": (context) => const ServicePage(),
          "/produits": (context) => const ProduitPage(),
          "/comptes": (context) => const ComptePage(),
          "/connexion": (context) => const ConnexionPage(),
        },

        debugShowCheckedModeBanner: false,
        theme: MyAppTheme.themes[0],
        //theme: ,
        // home: const HomePage(),
      );
    });
    // throw UnimplementedError();
  }
}
