import 'package:app_mobile_ci/pages/configuration/colors.dart';
import 'package:app_mobile_ci/pages/configuration/constants.dart';
import 'package:app_mobile_ci/pages/widgets/bbgci_default_textfield.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
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
          margin: EdgeInsets.only(top: 10.dp, bottom: 10.dp),
          child: Center(
            child: Image.asset(
              Constants.imagesDirectory + "/bbglogoci.png",
              alignment: Alignment.center,
            ),
          ),
        ),
      ),
      body: Container(
        // width: 500.dp,
        // color: AppColors.noirebbgci,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    margin: EdgeInsets.symmetric(horizontal: 1.dp),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Welcome"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    margin: EdgeInsets.symmetric(horizontal: 1.dp),
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          // crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("EN"),
                            Icon(
                              Icons.keyboard_arrow_down,
                            ),
                          ],
                        )),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 1.h,
              child: Container(
                color: AppColors.secondary,
                //margin: EdgeInsets.only(top: 5.dp),
                //padding: EdgeInsets.only(top: 10.dp),
              ),
            ),
            SizedBox(
              height: 2.h,
              // child: Container(
              //   color: AppColors.secondary,
              //   //margin: EdgeInsets.only(top: 5.dp),
              //   //padding: EdgeInsets.only(top: 10.dp),
              // ),
            ),
            BbgciDefaultTextfield(
              textController: _emailController,
              placeholder: "Email",
              prefixIcon: Icons.person,
              obscureText: false,
            ),
            SizedBox(
              height: 2.h,
            ),
            BbgciDefaultTextfield(
              textController: _passwordController,
              placeholder: "Mot de passe",
              prefixIcon: Icons.lock,
              obscureText: true,
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                        child: Text("Mot de passe oublié"),
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: Text("Remember me"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
