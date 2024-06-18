import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration:  BoxDecoration(
                gradient:  LinearGradient(colors: [Colors.orange, Theme.of(context).primaryColor  ])
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
              //  Navigator.of(context).pop();
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


          ListTile(
            leading:  Icon(Icons.logout,
              color: Theme.of(context).iconTheme.color,
            ),
            // trailing: const Icon(Icons.navigate_next),
            onTap: () {
              //  Navigator.of(context).pop();
              Navigator.pop(context);
            },
            title: Text(
              "Déconnexion",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),

        ],
      ),
    );
  }
}
