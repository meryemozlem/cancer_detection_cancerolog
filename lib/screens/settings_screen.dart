import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SettingsScreen extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return SingleChildScrollView(
      child: Padding(padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Ayarlar" , style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500,),
            
            ),
            SizedBox(height: 20),
            ListTile(
              leading: CircleAvatar(radius: 30, backgroundImage: AssetImage("assets/img.png"),
            ),
              title: Text("Meryem Özlem AYDOĞAN",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20,
              
              ),),
              subtitle: Text("Kullanıcı Profili"),
            ),
            Divider(height: 15,color: Colors.grey),
            ListTile(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => YanProfile()));
            },
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blueAccent.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(CupertinoIcons.person , color: Colors.blue, size: 35),
              ),
              title: Text("Profil" , style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 10),
            ListTile(onTap: () {  
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BildirimPage()),
                );
            },
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.indigo.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.align_vertical_bottom_outlined, color: Colors.indigo, size: 35),
              ),
              title: Text("Tahlillerim" , style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 10,),
            ListTile(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => YanProfile()));
            },
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.add_ic_call_rounded , color: Colors.deepPurple, size: 35),
              ),
              title: Text("Destek" , style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 15),

            ListTile(onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BildirimPage()),
                );
            },
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.indigo.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.privacy_tip_outlined, color: Colors.indigo, size: 35),
              ),
              title: Text("Gizlilik Politikası" , style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),

              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
            SizedBox(height: 15),
//ayarlar silimdi
            ListTile(onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => YanProfile()),
                );
            },
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.info_outline_rounded , color: Colors.orange, size: 35),
              ),
              title: Text("Hakkımızda" , style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),

              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),

            Divider(height: 30),
            ListTile(onTap: () {
              SystemNavigator.pop();
            },
              leading: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.redAccent.shade100,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.logout , color: Colors.red, size: 35),
              ),
              title: Text("Çıkış Yap" , style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
            ),
          ],
        ),
      ),
    );
  }
}

class YanProfile extends StatelessWidget {
  const YanProfile({super.key});

  final String metin = "Kanserolog: Taşınabilir cihazlarda gerçek zamanlı olarak kanser tespiti ve sınıflandırması yapabilen ileri teknolojili bir tıbbi uygulamadır. X-ray, JPEG, PNG formatlarındaki görüntüleri tarayarak, kanserli olup olmadığını ve eğer kanserli ise ne tür bir kanser olduğunu hızlı ve güvenilir bir şekilde bildirir. Ayrıca, kamera desteği ile de tarama yapabilir ve kullanıcıya anında sonuçlar sunar.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil/Hakkımızda/Destek'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/ek2.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            
            Padding(
              padding: const EdgeInsets.only(top:18.0),
              child: Text(
                metin,
                style: const TextStyle(fontSize: 18, color: Colors.black),
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class BildirimPage extends StatelessWidget {
  const BildirimPage({Key? key}) : super(key: key);

  final String metin = "Güncelleniyor ... ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tahlillerim/Gizlilik Politikası'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 450,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/loading.gif'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                // Metin
                Positioned(
                  bottom: 20,
                  left: 70,
                  child: Text(
                    metin,
                    style: const TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}