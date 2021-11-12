import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class idcard extends StatefulWidget {
  const idcard({Key? key}) : super(key: key);

  @override
  _idcardState createState() => _idcardState();
}

class _idcardState extends State<idcard> {

  void launcher(command) async {
    if(await canLaunch(command)){

      launch(command);
    }
    else{
      print("failed to launch.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Mostofa Mahmud"),
        backgroundColor: Colors.brown,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("images/yb.jpg"),
              radius: 70,
            ),

            SizedBox(height: 15,),
            Text("Mostofa Mahmud",
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            ),

            SizedBox(height: 10,),
            Text("Software Engineer Intern",
            style: TextStyle(
              fontSize: 17,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100),
              child: Divider(
                thickness: 2,
                color: Colors.brown,
              ),
            ),

            GestureDetector(
              onTap: (){
                launcher("tel: 01991794485");

              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: 60,
                width: 350,
                child:
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.call,
                    size: 30,
                    ),

                    SizedBox(width: 10,),
                    Text("01991794485",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    ),
                  ],
                ),
              ),
            ),


            SizedBox(height: 20,),


            GestureDetector(
              onTap: (){
                launcher("mailto: mostofamahmud23@gmail.com");
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                height: 60,
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.mail,
                        size: 30,
                      ),

                      SizedBox(width: 10,),
                      Text("mostofamahmud23@gmail.com",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),






          ],
        ),
      ),
    );
  }
}
