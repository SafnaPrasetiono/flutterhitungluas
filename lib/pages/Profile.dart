import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        title: const Text("Profile", style: TextStyle(
            color: Colors.white,
          fontSize: 18
        )),
        backgroundColor: Colors.pink,
      ),
      body : Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

         Container(
           height: 240,
           color: Colors.pink,
           margin: EdgeInsets.fromLTRB(0, 0, 0, 24),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               CircleAvatar(
                 radius: 56,
                 backgroundColor: Colors.red,
                 child: Padding(
                   padding: const EdgeInsets.all(0), // Border radius
                   child: ClipOval(child: Image.network('https://i.pinimg.com/736x/88/f1/3a/88f13a8a6684565d1602c31d8e887734.jpg')),
                 ),
               ),
               SizedBox(height: 12,),
               Text("Puput Melatih", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),),
               Text("puputmelatih77@gmail.com", style: TextStyle(color: Colors.white, fontSize: 12),),

             ],
           ),
         ),


          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Npm", style: TextStyle(fontSize: 14, color: Colors.grey)),
                    Text("16116761", style: TextStyle(fontSize: 18)),
                  ]
              )
          ),

          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Username", style: TextStyle(fontSize: 14, color: Colors.grey)),
                    Text("Puput Melatih", style: TextStyle(fontSize: 18)),
                  ]
              )
          ),

          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email", style: TextStyle(fontSize: 14, color: Colors.grey)),
                    Text("puputmelatih77@gmail.com", style: TextStyle(fontSize: 18)),
                  ]
              )
          ),

          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Jurusan", style: TextStyle(fontSize: 14, color: Colors.grey)),
                    Text("Sistem Informasi", style: TextStyle(fontSize: 18)),
                  ]
              )
          ),

          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Fakultas", style: TextStyle(fontSize: 14, color: Colors.grey)),
                    Text("Ilmu Komputer", style: TextStyle(fontSize: 18)),
                  ]
              )
          ),



        ],
      ),
    );
  }
}