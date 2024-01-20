import 'package:flutter/material.dart';
import 'package:hitungluas/pages/LuasLingkaran.dart';
import 'package:hitungluas/pages/LuasPersegi.dart';
import 'package:hitungluas/pages/Profile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // const titles = Text('Puput Melatih');

    return Scaffold(
      appBar: AppBar(
        // title: titles, titleTextStyle: TextStyle(fontSize: 18, color: Colors.white),
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        backgroundColor: Colors.pink,
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [


            Container(
              height: 180,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              decoration: BoxDecoration(
                  color: Colors.pink,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Selamat Datang!", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
                  Text("Applikasi Menghitung luas", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
                  SizedBox(height: 42,),
                ],
              ),
            ),

            Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: ElevatedButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => LuasPersegi(),),);},
                  child: Center(child: Text("Luas Persegi", style: TextStyle(fontSize: 14),)),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          )
                      )
                  ),
              ),
            ),

            Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: ElevatedButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => LuasLingkaran(),),);},
                child: Center(child: Text("Luas Lingkaran", style: TextStyle(fontSize: 14),)),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        )
                    )
                ),
              ),
            ),


            Container(
              height: 60,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              child: ElevatedButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Profile(),),);},
                child: Center(child: Text("Profile Developer", style: TextStyle(fontSize: 14),)),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        )
                    )
                ),
              ),
            ),

          ],
        ),

    );
  }
}