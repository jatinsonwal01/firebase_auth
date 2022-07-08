import 'package:firebase_path/login.dart';
import 'package:flutter/material.dart';

class getstarted extends StatefulWidget {
  const getstarted({Key? key}) : super(key: key);

  @override
  State<getstarted> createState() => _getstartedState();
}

class _getstartedState extends State<getstarted> {
  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.of(context).size;
    MediaQuery.of(context).removePadding(removeBottom: true);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Image(
              image: const AssetImage('assets/1.jpg'),
              height: _mediaquery.height / 1.8,
              width: _mediaquery.width,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              child: const Text(
                'Welcome to WorkForce!',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(5),
              child: const Text(
                'A one-stop portal for your construction needs and workers',
                style: TextStyle(fontSize: 22.5,),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> login()));
                });
              },
              child: Container(
                height: _mediaquery.height/12,
                width: _mediaquery.width,
                // color: Colors.blueAccent,
                alignment: Alignment.center,
                child: const Text(
                  'Get Started',style:TextStyle(
                  fontSize: 25, color: Colors.white,
                ),
                  textAlign: TextAlign.center,
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
