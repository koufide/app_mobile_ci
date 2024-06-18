import 'package:flutter/material.dart';

class ComptePage extends StatefulWidget{
  const ComptePage({super.key});
  
  @override
  State<StatefulWidget> createState() => _ComptePageState() ;

} // ComptePage



class _ComptePageState extends State<ComptePage> {
  int _solde = 0;

  void _faireVirement(){
    setState((){
      ++_solde;
    });
  } // _faireVirement

    void _faireRetrait(){
    setState((){
      --_solde;
    });
  } // _faireRetrait



  @override
  Widget build(BuildContext context) {
    // print("build...FIK...");
        return Scaffold(
      appBar:  AppBar(
        title:  Text("Comptes, solde = $_solde"),
      ),

      body:  Center(
        child: Text("Comptes, solde = $_solde"),
      ),

            floatingActionButton: Row(

              mainAxisAlignment: MainAxisAlignment.end,
              children: [

                FloatingActionButton(
                  heroTag: 'retrait',
                  onPressed: (){
                    _faireRetrait();
                  },
                  tooltip: "Faire un Retrait",
                  child: const Icon(Icons.remove),
                ),

                const SizedBox(width: 10,),


                FloatingActionButton(
                  heroTag: 'virement',
                  onPressed: (){
                    _faireVirement();
                  },
                  tooltip: "Faire un virement",
                  child: const Icon(Icons.add),
                ),





              ],
            )


    );
  }


}