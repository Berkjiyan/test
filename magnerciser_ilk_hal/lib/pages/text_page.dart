import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:magnerciser_ilk_hal/pages/award_page.dart';
import 'package:magnerciser_ilk_hal/utils/custom_colors.dart';

class TextPage extends StatefulWidget {
  @override
  _TextPage createState() => _TextPage();
}

class _TextPage extends State<TextPage> {
  TextEditingController _messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var messageFocusNode = new FocusNode();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Berk Jiyan Yıldız'),
        actions: [
          Container(
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: IconButton(
                icon: Icon(Icons.account_box_rounded, color: Colors.white),
                onPressed: null,
                color: Colors.white,
              )),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: null,
            color: Colors.white,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            title: Text(
              'Hesap',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            icon: IconButton(
              icon: Icon(Icons.account_box,
                color: Colors.white,
              ),
              onPressed: null,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            title: Text(
              'Başla',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            icon: IconButton(
              icon: Icon(Icons.not_started,
                color: Colors.white,
              ),
              onPressed: null,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            title: Text(
              'Harita',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            icon: IconButton(
              icon: Icon(Icons.map,
                color: Colors.white,
              ),
              onPressed: null,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            title: Text(
              'Mesajlar',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            icon: IconButton(
              icon: Icon(Icons.message,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TextPage(),
                  ),
                );
              },
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            title: Text(
              'Ödüller',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            icon: IconButton(
              icon: Icon(Icons.star,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AwardPage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Row(
          children: [
            Container(
              height: double.maxFinite,
              width: 60,
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: SingleChildScrollView(
                child: Container(
                    height: double.maxFinite,
                    width: 60,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 50,
                          width: 50,
                          child: Image(
                            image: AssetImage('assets/ada_pp.png'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 50,
                          width: 50,
                          child: Image(
                            image: AssetImage('assets/basar_pp.png'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 50,
                          width: 50,
                          child: Image(
                            image: AssetImage('assets/eylul_pp.png'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 50,
                          width: 50,
                          child: Image(
                            image: AssetImage('assets/mert_pp.png'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 50,
                          width: 50,
                          child: Image(
                            image: AssetImage('assets/onur_pp.png'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 50,
                          width: 50,
                          child: Image(
                            image: AssetImage('assets/ulas_pp.png'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 50,
                          width: 50,
                          child: Image(
                            image: AssetImage('assets/umut_pp.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
            ),
            Container(
                  height: double.maxFinite,
                  width: 300,
                  color: CustomColors.lightBlack,
                  child: Column(
                    children: [
                      Container(
                        width: 300,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border(top: BorderSide(color: CustomColors.darkGray,width: 0.5)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(30, 0, 0, 0),
                              height: 40,
                              width: 40,
                              child: Image(
                                image: AssetImage('assets/ada_pp.png'),
                              ),
                            ),
                            Text('Ada Akyürek',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            ),
                            SizedBox(width: 20,),
                          ],
                        ),
                      ),
                      SizedBox(height: 181,),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                height: 1,
                                width: 80,
                                color: CustomColors.darkGray,
                              ),
                              Text('bugün',
                              style: TextStyle(
                                color: CustomColors.darkGray,
                              ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                height: 1,
                                width: 80,
                                color: CustomColors.darkGray,
                              ),
                            ],
                          ),
                          SizedBox(height: 15,),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 70, 0),
                            alignment: Alignment.centerLeft,
                            height: 40,
                            width: 220,
                            decoration: BoxDecoration(
                              color: CustomColors.purple,
                              borderRadius: BorderRadius.circular(25)
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text('Bisiklet sürmeye çıkıcak mıyız?',
                              textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            margin: EdgeInsets.fromLTRB(80, 0, 0, 0),
                            alignment: Alignment.centerLeft,
                            height: 40,
                            width: 210,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text('Derslerin bitmesi lazım önce.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 160, 0),
                            alignment: Alignment.centerLeft,
                            height: 40,
                            width: 130,
                            decoration: BoxDecoration(
                                color: CustomColors.purple,
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text('Ne zaman bitecek?',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            margin: EdgeInsets.fromLTRB(110, 0, 0, 0),
                            alignment: Alignment.centerLeft,
                            height: 50,
                            width: 180,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text('Saat öğleden sonra 4.50\ngibi biter',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 90, 0),
                            alignment: Alignment.centerLeft,
                            height: 40,
                            width: 200,
                            decoration: BoxDecoration(
                                color: CustomColors.purple,
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text('Tamamdır, 5.30 gibi çıkalım.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            margin: EdgeInsets.fromLTRB(225, 0, 0, 0),
                            alignment: Alignment.centerLeft,
                            height: 40,
                            width: 65,
                            decoration: BoxDecoration(
                                color: Colors.blueGrey,
                                borderRadius: BorderRadius.circular(25)
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text('Anlaştık.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 300,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              border: Border(bottom: BorderSide(color: CustomColors.darkGray,width: 0.5)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(15, 7, 0, 7),
                                  height: 46,
                                  width: 220,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: TextField(
                                    controller: _messageController,
                                    decoration: InputDecoration(
                                      labelText: "Mesajınızı yazın...",
                                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.only(
                                          left: 15, bottom: 11, top: 11, right: 15),
                                      isDense: false,
                                      labelStyle: TextStyle(
                                          color: messageFocusNode.hasFocus
                                              ? CustomColors.darkGray
                                              : Colors.black),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: CustomColors.purple,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  child: IconButton(
                                    icon: Icon(Icons.send,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
