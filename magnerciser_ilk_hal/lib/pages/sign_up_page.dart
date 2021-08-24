import 'package:flutter/material.dart';
import 'package:magnerciser_ilk_hal/pages/homepage.dart';
import 'package:magnerciser_ilk_hal/pages/sign_in_page.dart';
import 'package:magnerciser_ilk_hal/utils/custom_colors.dart';


class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _secureText = true;
  TextEditingController _newPasswordController = TextEditingController();
  TextEditingController _newEmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var newEmailFocusNode = new FocusNode();
    var newPasswordFocusNode = new FocusNode();
    return Scaffold(
      backgroundColor: CustomColors.red,
      body: Container(
        height: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/sign_up_arkaplan.png'),
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
                    height: 180,
                    width: 180,
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
                      'Kaydol',
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
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
                  "Burdan kaydolabilirsin.\nMagnerciser'ı başlatmak E-mail ve şifreyle kaydol.",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
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
                      controller: _newEmailController,
                      focusNode: newEmailFocusNode,
                      style: TextStyle(fontSize: 14),
                      decoration: InputDecoration(
                          labelText: "Yeni E-mail",
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                          isDense: false,
                          labelStyle: TextStyle(
                              color: newEmailFocusNode.hasFocus
                                  ? CustomColors.darkGray
                                  : Colors.black)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
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
                      controller: _newPasswordController,
                      focusNode: newPasswordFocusNode,
                      obscureText: _secureText,
                      style: TextStyle(fontSize: 14),
                      decoration: InputDecoration(
                        labelText: "Yeni Şifre",
                        floatingLabelBehavior: FloatingLabelBehavior.auto,
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                        isDense: false,
                        labelStyle: TextStyle(
                            color: newPasswordFocusNode.hasFocus
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
                SizedBox(
                  height: 50,
                ),
                GestureDetector(
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 55),
                      width: double.maxFinite,
                      height: 50,
                      child: Center(
                        child: Text(
                          'Kaydol',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: CustomColors.gray,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.black),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    }),
                SizedBox(height: 15,),
                GestureDetector(
                  child: RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Zaten bi hesabın var mı?",
                          style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.w500)),
                      TextSpan(
                          text: " Giriş yap",
                          style: TextStyle(color: CustomColors.red))
                    ]),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>SignInPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}