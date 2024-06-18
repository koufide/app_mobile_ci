import 'package:flutter/material.dart';


class MyAppBar extends StatelessWidget{
  const MyAppBar( {required this.title, super.key} );

  final Widget title;
  
  @override
  Widget build(BuildContext context) {
   return Container(
    height: 60,
    padding: const EdgeInsets.symmetric(horizontal: 8),
    decoration: const BoxDecoration(color: Color(0xFFFF3C00)),

    child: Row(
      children: [
        const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
          ),
          Expanded(child: title),
          const IconButton(onPressed: null, icon: Icon(Icons.power_settings_new)),
      ],
    ),
   );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [ 
          MyAppBar(
            title: Text('Bridge Bank Group', style: Theme.of(context).primaryTextTheme.titleLarge
          ,),),
          const Expanded(child: Center(
            child: Text(
              'OPERATION',
              style: TextStyle(
                fontSize: 33,
                color: Color(0xFFFF3c00)
              ),
              ),
          ))
        ],
      ),
    );
  }

  
}

void main(){
  runApp(
   const MaterialApp(
    title: 'My Mobile Bank App',
    home: SafeArea(child: MyScaffold()),
    debugShowCheckedModeBanner: false,
   )
  );
}