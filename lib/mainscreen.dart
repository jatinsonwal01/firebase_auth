import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_path/getstarted.dart';
import 'package:flutter/material.dart';

class mainscreen extends StatefulWidget {
  const mainscreen({Key? key}) : super(key: key);

  @override
  State<mainscreen> createState() => _mainscreenState();
}

class _mainscreenState extends State<mainscreen> {
  @override
  Widget build(BuildContext context) {
    var _mediaquery= MediaQuery.of(context).size;
    return Scaffold(
       body: Center(
         child: Column(
           children: [
             const SizedBox(
               height: 100,
             ),
             const Text('your logged in okk'),
             const SizedBox(
               height: 50,
             ),
             ElevatedButton(
               onPressed: (){

                 FirebaseAuth.instance.signOut().then((value){
                   Navigator.pop(context, MaterialPageRoute(builder: (context)=> const getstarted()));
                 });
               },
               child: Container(
                 height: _mediaquery.height/13,
                 width: _mediaquery.width*(4/5)-30,

                 // color: Colors.blueAccent,
                 alignment: Alignment.center,
                 child: const Text(
                   'Logout',style:TextStyle(
                   fontSize: 20, color: Colors.white,
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
