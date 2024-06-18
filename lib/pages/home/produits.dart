import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProduitPage extends StatefulWidget {
  const ProduitPage({super.key});

  @override
  State<ProduitPage> createState() => _ProduitPageState();
}

class _ProduitPageState extends State<ProduitPage> {
  List<dynamic> produits = [];

  @override
  void initState() {
    super.initState();
    http.get(Uri.parse("http://192.168.228.44:9000/produits")).then((resp) {
      // print(resp.body);
      setState(() {
        produits = json.decode(resp.body);
      });
    }).catchError((erreur) {
      print('********** Erreur *********');
      print(erreur);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Produits"),
        ),
        body: ListView.builder(
          itemCount: produits.length,
          itemBuilder: (context, index) {
            // print(index);
            return ListTile(
              // title: Text("${produits[index]["nom"]}"),
              title: Card(
                color: Colors.blueAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      child: Column(
                        children: [
                          Text("${produits[index]["nom"]}"),
                        ],
                      ),
                    ),
                    Image(
                      width: 150,
                      image: AssetImage("${produits[index]["image"]}"),
                    )
                  ],
                ),
              ),
            );
          },
        ));
  }
}

// class ProduitPage extends StatelessWidget{
//   const ProduitPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar( title: const Text("Produits"),),
//       body:  Center(
//         // child: Text("Produits"),
//         child: ElevatedButton(
//           onPressed: () {
//             // Navigator.of(context).pop();
//             // Navigator.pop(context);
//           },
//           child: const Text("Retour")
//         ),
//
//       ),
//     );
//    } // build
// }
