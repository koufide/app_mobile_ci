import 'package:app_mobile_ci/pages/configuration/colors.dart';
import 'package:app_mobile_ci/pages/configuration/constants.dart';
import 'package:app_mobile_ci/pages/configuration/theme.dart';
import 'package:app_mobile_ci/pages/internalisation/app_locale.dart';
import 'package:app_mobile_ci/pages/widgets/bbgci_default_checkbox.dart';
import 'package:app_mobile_ci/pages/widgets/bbgci_default_textfield.dart';
import 'package:app_mobile_ci/pages/widgets/language_view.dart';
// import 'package:flutter_localization/flutter_localization.dart';

// import 'package:flutter/cupertino.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
//import 'package:easy_localization_loader/easy_localization_loader.dart'; // import custom loaders
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// import 'generated/locale_keys.g.dart';
// import 'lang_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';




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
   String _langue ='FR';
  List<String> _langues = ['FR','US','ES'];
  // final FlutterLocalization _localization = FlutterLocalization.instance;


  @override
  void initState() {
    super.initState();
  }

  // void _onTranslatedLanguage(Locale? locale) {
  //   setState(() {});
  // }

  void _changeLanguage(String? newValue){
    _langue = newValue!;
    print("newValue ==> $newValue");

    if(newValue != null && newValue =="US"){
      context.setLocale(Locale('en', 'US'));
    }

    if(newValue != null && newValue =="FR"){
      context.setLocale(Locale('fr', 'FR'));
    }

    if(newValue != null && newValue =="ES"){
      context.setLocale(Locale('es', 'ES'));
    }
  }


  @override
  Widget build(BuildContext context) {

    _langue = context.locale.toString().split('_')[1];

    // print("context.locale.toString() ==> "+context.locale.toString());
    // context.setLocale(Locale('en', 'US'));
    // print("context.locale.toString() ==> "+context.locale.toString());

    return Scaffold(
      // supportedLocales: _localization.supportedLocales,
      // localizationsDelegates: _localization.localizationsDelegates,

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

      body: SingleChildScrollView(
        child: Container(
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

                        // child: TextButton(
                        //   child: Icon(
                        //     Icons.language,
                        //   ),
                        //   onPressed: (){
                        //     Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //           builder: (_) => LanguageView(), fullscreenDialog: true,
                        //       ),
                        //     );
                        //   },
                        // ),

                        child: Text(context.tr("welcome")),
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
                              // Text(_langue),
                              // Icon(
                              //   Icons.keyboard_arrow_down,
                              // ),
                              DropdownButton<String>(
                                value: _langue,
                                  onChanged: (String? newValue){
                                  setState(() {
                                    _changeLanguage(newValue);

                                  });
                                  },
                                items: _langues.map<DropdownMenuItem<String>>(
                                    (String language){
                                      return DropdownMenuItem<String>(
                                        child: Text(language),
                                        value: language,
                                      );
                                    }
                                ).toList(),
                              ),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 0.25.h,
                child: Container(
                  color: AppColors.primary,
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
                placeholder: context.tr("email"),
                prefixIcon: Icons.person,
                obscureText: false,
              ),

              SizedBox(
                height: 2.h,
              ),

              BbgciDefaultTextfield(
                textController: _passwordController,
                placeholder: context.tr("password"),
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
                      padding: const EdgeInsets.only(left: 2.0.dp),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          child: Text(
                            context.tr("password forgotten"),
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
                      padding: EdgeInsets.only(right: 2.0.dp),
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
                                context.tr("remember me"),
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

              Padding(
                padding: EdgeInsets.all(Constants.defaultPaddingRight),
                child: Row(
                  children: [
                    Expanded(
                      flex: 9, //90% de l espace
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Se connecter"),
                        style: ElevatedButton.styleFrom(
                          // minimumSize: Size(double.infinity, 10),
                          backgroundColor: MyAppTheme.orangebbgci,
                          foregroundColor: MyAppTheme.blancbbgci,
                          minimumSize: Size(double.infinity, 6.h)
                          // textStyle: TextStyle(
                          //   color: MyAppTheme.blancbbgci,
                          // ),
                        ),
                      ),
                    ),
                    // Spacer(
                    //   flex: 1,
                    // ),
                    Container(
                      margin: EdgeInsets.only(left: 10.dp),
                      // color: MyAppTheme.orangebbgci,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.dp)),
                        color: MyAppTheme.orangebbgci,

                      ),
                      // height: 5.h,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.fingerprint,
                        ),
                        iconSize: 30.dp,
                        splashColor: Colors.yellow,
                        highlightColor:Colors.black,
                        // highlightColor: MyAppTheme.noirebbgci,
                        color: MyAppTheme.blancbbgci,
                      ),
                    ),

                    // Expanded(child: child),
                  ],
                ),
              ),

              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // children: [

              //   Container(
              //     margin: EdgeInsets.only(right: Constants.defaultPaddingRight),
              //     // color: MyAppTheme.orangebbgci,
              //     //height: 20.dp,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(15.dp),
              //       //border: Border.all(width: )
              //       color: MyAppTheme.orangebbgci,
              //     ),

              //   ),
              // ],

              // ,Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     ElevatedButton(
              //         onPressed: (){}
              //         , child: Text("Se connecter"),
              //       // style: ElevatedButton.styleFrom(
              //       //   minimumSize: Size(double.infinity, 10)
              //       // ),
              //     ),
              //     Container(
              //       margin: EdgeInsets.only(right: Constants.defaultPaddingRight),
              //       // color: MyAppTheme.orangebbgci,
              //       //height: 20.dp,
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(15.dp),
              //         //border: Border.all(width: )
              //         color: MyAppTheme.orangebbgci,
              //       ),
              //       child: IconButton(
              //         onPressed: (){
              //         },
              //         icon: const Icon(Icons.fingerprint,
              //         ),
              //         iconSize: 30.dp,
              //         splashColor: Colors.yellow,
              //         highlightColor: Colors.blue,
              //         color: MyAppTheme.blancbbgci,
              //       ),
              //     ),
              //
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
