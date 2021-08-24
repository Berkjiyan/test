import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:magnerciser_ilk_hal/pages/homepage.dart';
import 'package:magnerciser_ilk_hal/pages/sign_up_page.dart';
import 'package:magnerciser_ilk_hal/utils/custom_colors.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _secureText = true;
  static TextEditingController _emailController = TextEditingController();
  static TextEditingController _passwordController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  var emailFocusNode = new FocusNode();
  var passwordFocusNode = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Container(
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/sign_in_arkaplan.png'),
            fit: BoxFit.cover,

          )
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(''),
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: Container(
                    width: 180,
                    height: 180,
                    child: Image(
                      image: AssetImage('assets/magnetech_logo.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'MAGNERCISER',
                      style: TextStyle(
                        fontSize: 25,
                        color: CustomColors.red,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Yeniden hoşgeldin.\nMagnerciser'ı başlatmak için giriş yap",
                  style: TextStyle(
                      fontSize: 14,
                      color: CustomColors.red,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 60,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 55),
                  width: double.maxFinite,
                  height: 50,
                  decoration: BoxDecoration(
                      color: CustomColors.paleGray,
                      border: Border.all(color: CustomColors.gray, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailController,
                      focusNode: emailFocusNode,
                      style: TextStyle(fontSize: 14),
                      decoration: InputDecoration(
                          labelText: "E-mail",
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          isDense: false,
                          labelStyle: TextStyle(
                              color: emailFocusNode.hasFocus
                                  ? CustomColors.darkGray
                                  : Colors.black)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 55),
                  width: double.maxFinite,
                  height: 50,
                  decoration: BoxDecoration(
                      color: CustomColors.paleGray,
                      border: Border.all(color: CustomColors.gray, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _passwordController,
                      focusNode: passwordFocusNode,
                      obscureText: _secureText,
                      style: TextStyle(fontSize: 14),
                      decoration: InputDecoration(
                        labelText: "Şifre",
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                        isDense: false,
                        labelStyle: TextStyle(
                            color: passwordFocusNode.hasFocus
                                ? CustomColors.darkGray
                                : Colors.black),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _secureText
                                ? Icons.remove_red_eye_outlined
                                : Icons.remove_red_eye,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            setState(() {
                              _secureText = !_secureText;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 7.5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 55.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Şifreni mi unuttun?",
                        style:
                            TextStyle(fontSize: 12, color: CustomColors.darkGray),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                GestureDetector(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 55),
                    width: double.maxFinite,
                    height: 55,
                    child: Center(
                      child: Text(
                        "Giriş Yap",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: CustomColors.red),
                  ),
                  onTap: () {
                    setState(() {
                      validation();
                    });
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Hesabın yok mu?",
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text: " Kaydol",
                          style: TextStyle(color: CustomColors.red))
                    ]),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpPage(),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validation() {
    var haveError = false;
    var errorMessage = "";
    if (_emailController.text != 'berk-yildiz-46@hotmail.com') {
      haveError = true;
      errorMessage = 'Wrong email, please try again later!';
    }
    if (_passwordController.text != 'sifre123') {
      haveError = true;
      errorMessage = errorMessage + '\nWrong password, please try again later!';
    }

    if (haveError) {
      _scaffoldKey.currentState
          .showSnackBar(new SnackBar(content: Text(errorMessage)));
    }
    if (haveError == false){
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    }
  }
}
