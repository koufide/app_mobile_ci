import 'package:app_mobile_ci/pages/configuration/colors.dart';
import 'package:app_mobile_ci/pages/configuration/constants.dart';
import 'package:app_mobile_ci/pages/widgets/bbgci_default_textfield.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConnexionPage extends StatefulWidget {
  const ConnexionPage({super.key});

  @override
  State<ConnexionPage> createState() => _ConnexionPageState();
}

class _ConnexionPageState extends State<ConnexionPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Container(
           margin: EdgeInsets.only(right: 0, top: 10, bottom: 10),
           child: Center(
             child: Image.asset(Constants.imagesDirectory + "/bbglogoci.png",
             alignment: Alignment.center,
             ),
           ),
         ),
        ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            BbgciDefaultTextfield(
              textController: _emailController,
              placeholder: "Email",
              prefixIcon: Icons.email,
              obscureText: false,
            ),
            SizedBox(
              height: 10,
            ),
            BbgciDefaultTextfield(
              textController: _passwordController,
              placeholder: "Mot de passe",
              prefixIcon: Icons.password,
              obscureText: true,
            ),
          ],
        ),
      ),
    );
  }
}
