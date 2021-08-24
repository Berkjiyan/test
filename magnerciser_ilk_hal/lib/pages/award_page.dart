import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:magnerciser_ilk_hal/pages/text_page.dart';
import 'package:magnerciser_ilk_hal/utils/custom_colors.dart';

class AwardPage extends StatefulWidget {
  @override
  _AwardPageState createState() => _AwardPageState();
}

class _AwardPageState extends State<AwardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                '    İl Bazında\nAylık Sıralama',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.green,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  height: 300,
                  width: 252,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(25),
                    color: CustomColors.lightGreen,
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Row(
                          children: [
                            Text('Birinci = Beste YILDIRIM'),
                            IconButton(icon: Icon(Icons.star), onPressed: null),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Row(
                          children: [
                            Text('İkinci = Neva TUTAR'),
                            IconButton(
                                icon: Icon(Icons.star_half_rounded),
                                onPressed: null),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Row(
                          children: [
                            Text('Üçüncü = Ulaş ALPTEKİN'),
                            IconButton(
                                icon: Icon(Icons.star_border_rounded),
                                onPressed: null),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Row(
                          children: [
                            Text('Dördüncü = Mert UYAR'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Row(
                          children: [
                            Text('Beşinci = Berk Jiyan YILDIZ'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Row(
                          children: [
                            Text('Altıncı = Fatih HOŞOĞLU'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Center(
                child: Container(
                  width: 252,
                  height: 25,
                  child: Text('devamı...',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.blue,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
