import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:magnerciser_ilk_hal/pages/award_page.dart';
import 'package:magnerciser_ilk_hal/pages/text_page.dart';
import 'package:magnerciser_ilk_hal/utils/custom_colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.red,
        title: Text('Berk Jiyan Yıldız'),
        elevation: 0,
        leading: Container(
          height: double.maxFinite,
          width: 70,
          decoration: BoxDecoration(
            color: Colors.black54,
          ),
          child: Image(
            image: AssetImage('assets/magnetech_logo.png'),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: null,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: CustomColors.red,
        items: [
          BottomNavigationBarItem(
            backgroundColor: CustomColors.red,
            title: Text(
              'Hesap',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            icon: IconButton(
              icon: Icon(Icons.account_box),
              onPressed: null,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: CustomColors.red,
            title: Text(
              'Başla',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            icon: IconButton(
              icon: Icon(Icons.not_started),
              onPressed: null,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: CustomColors.red,
            title: Text(
              'Harita',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            icon: IconButton(
              icon: Icon(Icons.map),
              onPressed: null,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: CustomColors.red,
            title: Text(
              'Mesajlar',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            icon: IconButton(
              icon: Icon(Icons.message),
              onPressed:(){
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TextPage(),
                ),
              );},
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: CustomColors.red,
            title: Text(
              'Ödüller',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            icon: IconButton(
              icon: Icon(Icons.star),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AwardPage(),
                  ),
                );},
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                color: CustomColors.paleGray,
              ),
              child: Container(
                height: double.maxFinite,
                child: Column(
                  children: [
                    Text(
                      'GÜNLÜK DURUM',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 80,
                          width: 120,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.green,
                          ),
                          child: Center(
                            child: Text('Yürüme Mesafesi\n    12541/10000'),
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 120,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: CustomColors.red,
                          ),
                          child: Center(
                            child: Text('Koşma Mesafesi\n     5,2km/7km'),
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 120,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            color: Colors.green,
                          ),
                          child: Center(
                            child: Text('Bisiklet Mesafesi\n       17.6km/7km'),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 277,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: CustomColors.newGray,
                        border: Border.all(color: CustomColors.midGray,width: 1),
                      ),
                      child: Column(children: [
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Container(
                              child: Text('Berkjiyan',style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.left,
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                            IconButton(
                              icon: Icon(Icons.directions_walk_outlined),
                              onPressed: null,
                            ),
                            SizedBox(width: 10,),
                            Text('17.36km')
                          ],
                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          height: 217,
                          width: 340,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Image(
                            image: AssetImage('assets/bisiklet.png'),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ]),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 267,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: CustomColors.newGray,
                        border: Border.all(color: CustomColors.midGray,width: 1),
                      ),
                      child: Column(children: [
                        Row(
                          children: [
                            SizedBox(width: 15,),
                            Container(
                              child: Text('Beste',style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                                textAlign: TextAlign.left,
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                            IconButton(
                              icon: Icon(Icons.directions_bike_outlined),
                              onPressed: null,
                            ),
                            SizedBox(width: 10,),
                            Text('6.3km'),
                          ],
                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          height: 217,
                          width: 340,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(5)),
                          child: Image(
                            image: AssetImage('assets/yürüyüş.png'),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
