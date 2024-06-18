import 'package:app_mobile_ci/pages/home/comptes.dart';
import 'package:app_mobile_ci/pages/home/historiques.dart';
import 'package:app_mobile_ci/pages/home/home.dart';
import 'package:app_mobile_ci/pages/home/notifications.dart';
import 'package:app_mobile_ci/pages/home/produits.dart';
import 'package:app_mobile_ci/pages/home/services.dart';
import 'package:app_mobile_ci/pages/home/virements.dart';
import 'package:app_mobile_ci/pages/themes/theme.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); 
  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      // print(context);

      initialRoute: '/',
      routes: { 
        "/":(context) => const HomePage(),
        "/virements":(context)=>const VirementPage(),
        "/notifications":(context)=> const NotificationPage(),
        "/historiques":(context)=> const HistoriquePage(),
        "/services":(context)=> const ServicePage(),
        "/produits":(context)=> const ProduitPage(),
        "/comptes":(context)=> const ComptePage(),
      },

      debugShowCheckedModeBanner: false,
      theme: MyAppTheme.themes[0],
      // home: const HomePage(),
    );
    // throw UnimplementedError();
  }
}