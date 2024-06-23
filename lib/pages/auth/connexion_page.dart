import 'package:app_mobile_ci/pages/configuration/colors.dart';
import 'package:app_mobile_ci/pages/configuration/constants.dart';
import 'package:app_mobile_ci/pages/configuration/theme.dart';
import 'package:app_mobile_ci/pages/widgets/bbgci_default_checkbox.dart';
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
  bool _rememberMe = false;

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
                        child: Text(
                          "Password forgotten",
                          style: TextStyle(
                            color: MyAppTheme.orangebbgci,
                            // fontSize: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                _rememberMe = !_rememberMe;
                              });
                            },
                            child: Text(
                              "Remember me",
                              style: TextStyle(
                                color: MyAppTheme.orangebbgci,
                              ),
                            ),
                          ),
                          // Radio<bool>(
                          //   value: true,
                          //   groupValue: _rememberMe,
                          //   onChanged: (bool? value){
                          //     setState(() {
                          //       _rememberMe = value!;
                          //     });
                          //   },
                          // ),
                          Checkbox(
                            value: _rememberMe,
                            activeColor: AppColors.noirebbgci,
                            checkColor: AppColors.blancbbgci,
                            onChanged: (bool? value) {
                              setState(() {
                                _rememberMe = value!;
                              });
                            },
                          ),
                          // BbgciDefaultCheckbox(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 2.h,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                    onPressed: (){}
                    , child: Text("Se connecter"),
                  // style: ElevatedButton.styleFrom(
                  //   minimumSize: Size(double.infinity, 10)
                  // ),
                ),
                Container(
                  margin: EdgeInsets.only(right: Constants.defaultPaddingRight),
                  // color: MyAppTheme.orangebbgci,
                  //height: 20.dp,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.dp),
                    //border: Border.all(width: )
                    color: MyAppTheme.orangebbgci,
                  ),
                  child: IconButton(
                    onPressed: (){
                    },
                    icon: Icon(Icons.fingerprint,
                    ),
                    iconSize: 30.dp,
                    splashColor: Colors.yellow,
                    highlightColor: Colors.blue,
                    color: MyAppTheme.blancbbgci,
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
