import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:magnerciser_ilk_hal/pages/sign_in_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignInPage(),
    );
  }
}
