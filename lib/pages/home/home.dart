// import 'package:flutter/cupertino.dart';
// import 'package:app_mobile_ci/pages/home/widgets/home.drawer.dart';
// import 'package:app_mobile_ci/pages/widgets/drawer.widget.dart';
// import 'dart:io';
import 'package:app_mobile_ci/pages/auth/connexion_page.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_exit_app/flutter_exit_app.dart';

void main(){
  runApp(const HomePage());
}


class HomePage extends StatelessWidget{ 
  const HomePage({super.key}); 

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Accueil',

     // theme: ThemeData(
     //    primarySwatch: Colors.orange,
     //    fontFamily: 'Poppins',
     //    textTheme: const TextTheme(
     //      bodySmall: TextStyle(fontSize: 15),
     //      bodyMedium: TextStyle(fontSize: 20),
     //      bodyLarge: TextStyle(fontSize: 25),
     //    ),
     //    iconTheme: const IconThemeData(
     //      color: Colors.orange,
     //      size: 25
     //    )
     //  ),


      home: Scaffold(
        appBar: topBar(),
        // drawer: MyDrawer(),
        drawer: Drawer(
          child: Column(
            children: [
              DrawerHeader(
                decoration:  BoxDecoration(
                    gradient:  LinearGradient(colors: [Theme.of(context).primaryColorDark, Theme.of(context).primaryColor  ])
                ),

                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/contacts.jpg'),
                      radius: 50,
                    ),

                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/contacts.jpg'),
                      radius: 30,
                    )
                  ],
                ),
              ),


              ListTile(
                leading:  Icon(Icons.home,
                  color: Theme.of(context).iconTheme.color,
                ),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                   Navigator.of(context).pop();
                  //  Navigator.pop(context);
                  Navigator.pushNamed(context, "/");
                },
                title: Text(
                  "Accueil",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),

              ListTile(
                leading:  Icon(Icons.hive,
                  color: Theme.of(context).iconTheme.color,
                ),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  // Navigator.of(context).pop();
                  // Navigator.pop(context);
                  Navigator.pushNamed(context, "/produits");
                },
                title: Text(
                  "Produits",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),


              ListTile(
                leading:  Icon(Icons.cases,
                  color: Theme.of(context).iconTheme.color,
                ),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  //  Navigator.of(context).pop();
                  // Navigator.pop(context);
                  Navigator.pushNamed(context, "/comptes");
                },
                title: Text(
                  "Comptes",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),

              ListTile(
                leading:  Icon(Icons.sync_alt,
                  color: Theme.of(context).iconTheme.color,
                ),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  //  Navigator.of(context).pop();
                  // Navigator.pop(context);
                  Navigator.pushNamed(context, "/virements");
                },
                title: Text(
                  "Virements",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),

              ListTile(
                leading:  Icon(Icons.notifications_active,
                  color: Theme.of(context).iconTheme.color,
                ),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  //  Navigator.of(context).pop();
                  // Navigator.pop(context);
                  Navigator.pushNamed(context, "/notifications");
                },
                title: Text(
                  "Notifications",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),

              ListTile(
                leading:  Icon(Icons.leak_add,
                  color: Theme.of(context).iconTheme.color,
                ),
                trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  //  Navigator.of(context).pop();
                  // Navigator.pop(context);
                  Navigator.pushNamed(context, "/services");
                },
                title: Text(
                  "Services",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),

              Divider(
                color: Theme.of(context).primaryColor,
              ),

              ListTile(
                leading:  Icon(Icons.login,
                  color: Theme.of(context).iconTheme.color,
                ),
                 trailing: const Icon(Icons.navigate_next),
                onTap: () {
                  final route = MaterialPageRoute(builder: (ctxt) => ConnexionPage());
                  // Navigator.push(context, "/connexion");
                  Navigator.pushReplacement(context, route);
                },
                title: Text(
                  "Connexion",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),

              ListTile(
                leading:  Icon(Icons.logout,
                  color: Theme.of(context).iconTheme.color,
                ),
                // trailing: const Icon(Icons.navigate_next),
                onTap: () {
                },
                title: Text(
                  "Déconnexion",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),


            ],
          ),
        ),
        body: const Center(
          child: Text(
            'APPLICATION MOBILE',
            style: TextStyle(fontSize: 33, color: Color(0xffff3a03), fontFamily: 'Poppins'),
            ),
        ),
        bottomNavigationBar: piedNavigationBar(),
      ),
    );
    // throw UnimplementedError();
  }

} // HomePage


Widget piedNavigationBar() {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          label: 'Accueil',
          icon: Icon(Icons.home)
        ),

         BottomNavigationBarItem(
          label: 'Produits',
          icon: Icon(Icons.hive)
        ),

        BottomNavigationBarItem(
          label: 'Virements',
          icon: Icon(Icons.sync_alt)
        ),

         BottomNavigationBarItem(
          label: 'Autres',
          // onTap: (){
          //   Navigator.pushNamed(context, "/autres");
          // }
          icon: Icon(Icons.view_headline)
        ),



      ]
  );
}


PreferredSizeWidget topBar() {
  return AppBar(
// backgroundColor: const Color(0xffff3c00),
    backgroundColor: const Color(0xffFF3A03),
// title: const Text('Bridge Bank Group'),
    title: const Text(
      'Bridge Bank Group Cote d\'Ivoire ',
      style: TextStyle(
          color: Color(0xffFFFFFF), fontSize: 22, fontFamily: 'Poppins'),
    ),
  );
} // topBar