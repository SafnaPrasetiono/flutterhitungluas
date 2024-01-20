import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LuasPersegi extends StatelessWidget {
  const LuasPersegi({super.key});

  @override
  Widget build(BuildContext context) {
    const titles = Text('Luas Persegi');
    final persegi = TextEditingController();
    final luas = TextEditingController();
    final hasil = TextEditingController();

    void chekhasil() {
      int x = int.parse(persegi.value.text);
      int y = int.parse(luas.value.text);
      int ren = x * y;
      // print(ren);
      hasil.text = ren.toString();
    }

    return Scaffold(
      appBar: AppBar(
        title: titles, titleTextStyle: TextStyle(fontSize: 18, color: Colors.white),
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        backgroundColor: Colors.pink,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.pink,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: TextField(
              controller: hasil,
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 42, height: 3, fontWeight: FontWeight.bold, color: Colors.white),
              readOnly: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '0',
                hintStyle: TextStyle(color: Colors.white),
                contentPadding: EdgeInsets.fromLTRB(8, 8, 8, 0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 16, 8, 8),
            child: TextField(
              controller: persegi,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Panjang Persegi',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: TextField(
              controller: luas,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Lebar Persegi',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                      )
                  )
              ),
              onPressed: (){
                chekhasil();
              },
              child:  Center(
                child: Text(
                  "HASIL",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }
}