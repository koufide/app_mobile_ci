import 'dart:convert';

import 'package:app_mobile_ci/pages/configuration/colors.dart';
import 'package:app_mobile_ci/pages/configuration/constants.dart';
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
    http.get(Uri.parse("${Constants.baseUrl}/produits")).then((resp) {
      // print(resp.body);
      setState(() {
        produits = json.decode(resp.body);
      });
    }).catchError((erreur) {
      // print('********** Erreur *********');
      // print(erreur);
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
                child: Row(
                  children: [
                    SizedBox(
                      width: 140,
                      height: 88,
                      // color: AppColors.blancbbgci,
                      // Text("data"),
                      child: Image(image: AssetImage("${produits[index]["image"]}"),),
                    ),
                    Container(
                      width: 160,
                      color: AppColors.noirebbgci,
                       child:  Column(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${produits[index]["nom"]}", style: Theme.of(context).textTheme.bodySmall,),
                          Text("Frais: ${produits[index]["frais"]}", style: Theme.of(context).textTheme.bodySmall,),
                        ],
                       )
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
