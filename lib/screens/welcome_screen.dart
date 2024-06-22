import 'package:flutter/material.dart';
import 'package:cancerolog/screens/home_screen.dart';
import 'package:cancerolog/widgets/navbar_roots.dart';
class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({super.key});

  @override
  Widget build (BuildContext context){
    return Material(
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,

        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height:15),
            Align(alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => NavBarRoots(),
                ),);
              },
              child: Text("Atla",
              style: TextStyle(color: Color(0xFF7165D6), fontSize:23,fontWeight: FontWeight.bold,
              ),
            ),
            ),),
            SizedBox(height: 10),

            Padding( padding: EdgeInsets.all(20),child: ClipRRect(borderRadius: BorderRadius.circular(80),
              child: Image.asset("assets/ek.jpeg"),),
            ),

            SizedBox(height: 25),
            Text( "Kanserolog",
              style: TextStyle(color: Color(0xFF7165D6),
                fontSize: 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 2,
              ),
            ),
            SizedBox(height: 10,),
            Text( "Taşınabilir Cihazlarda Gerçek Zamanlı ",
              style: TextStyle(color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 5),
            Text( "Kanser Tespiti ve Sınıflandırmasını Yapar",
              style: TextStyle(color: Colors.black54,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 40,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: Color(0xFF7165D6),
                borderRadius: BorderRadius.circular(16),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      //
                    builder: (context) => NavBarRoots(),
                    ));
                  },
                  child: Padding(padding: EdgeInsets.symmetric(vertical: 19,horizontal: 50),
                  child: Text("Giriş", style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                  ),
                ),
              ),
              
            ],),
          ],
        ),
      ),
    );
  }
}



