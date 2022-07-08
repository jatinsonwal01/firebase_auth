import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_path/mainscreen.dart';
import 'package:flutter/material.dart';
import 'getstarted.dart';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  final emailcontroller = TextEditingController();
  final passwordcontroller1 = TextEditingController();
  final passwordcontroller2 = TextEditingController();

  bool _visible1 = false;
  bool _visible2 = false;


  final _formkey= GlobalKey<FormState>();

  @override
  void initState() {
    _visible2 = false;
    _visible1 = false;
  }

  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.of(context).size;
    var _media = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: const Color(0xff0b2b4c),
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              SizedBox(
                height: _media + 20,
              ),
              Stack(
                children: [
                  Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                            icon: const Icon(
                              Icons.keyboard_backspace,
                              color: Colors.white,
                              size: 30,
                            ),
                            onPressed: () {
                              Navigator.pop(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const getstarted()));
                            },
                          ))),
                  // Container(
                  //     padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  //     child: Align(
                  //         alignment: Alignment.topRight,
                  //         child: TextButton(
                  //           style: ElevatedButton.styleFrom(
                  //               primary: Color(0xff0b2b4c),
                  //               onPrimary: Colors.white),
                  //           child: Text('Skip for Now'),
                  //           onPressed: () {
                  //             Navigator.pushReplacement(
                  //                 context,
                  //                 MaterialPageRoute(
                  //                     builder: (context) => mainscreen()));
                  //           },
                  //         ))),
                ],
              ),
              SizedBox(
                height: _mediaquery.height / 16,
              ),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'Register to WorkForce',
                  style: TextStyle(
                      fontSize: 32.5,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(45, 0, 45, 10),
                child: const Text(
                  'Enter your email and create password below to continue!',
                  style: TextStyle(fontSize: 17.5, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                  width: _mediaquery.width * (4 / 5),
                  height: _mediaquery.height * (1 / 9.5),
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  constraints:
                      BoxConstraints(maxWidth: _mediaquery.width * (4 / 5)),
                  // padding: EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      border: Border(
                    top: BorderSide(
                        color: Colors.indigo, width: 2, style: BorderStyle.solid),
                    bottom: BorderSide(
                        color: Colors.indigo, width: 2, style: BorderStyle.solid),
                    right: BorderSide(
                        color: Colors.indigo, width: 2, style: BorderStyle.solid),
                    left: BorderSide(
                        color: Colors.indigo, width: 2, style: BorderStyle.solid),
                  )),
                  child: Row(
                    children: [
                      SizedBox(
                        width: _mediaquery.width / 35,
                      ),
                      const Icon(
                        Icons.account_circle,
                        size: 32.5,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: _mediaquery.width / 17.5,
                      ),
                      Expanded(
                        child: TextFormField(
                          showCursor: true,
                          controller: emailcontroller,
                          validator: (email){
                            RegExp regex =RegExp( r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                            r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
                            r"{0,253}[a-zA-Z0-9])?)*$");
                            if (!regex.hasMatch(email!)) {
                              return 'incorrect email';
                            } else {
                              return null;
                            }
                          },
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Email",
                              errorStyle: TextStyle(
                                  fontSize: 15,
                                  height: 0.3,
                                  overflow: TextOverflow.ellipsis),
                              hintStyle:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          style: const TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      SizedBox(width: _mediaquery.width / 17.5)
                    ],
                  )),
              const SizedBox(
                height: 30,
              ),
              Container(
                  width: _mediaquery.width * (4 / 5),
                  height: _mediaquery.height * (1 / 9.5),
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  constraints:
                      BoxConstraints(maxWidth: _mediaquery.width * (4 / 5)),
                  // padding: EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      border: Border(
                    top: BorderSide(
                        color: Colors.indigo, width: 2, style: BorderStyle.solid),
                    bottom: BorderSide(
                        color: Colors.indigo, width: 2, style: BorderStyle.solid),
                    right: BorderSide(
                        color: Colors.indigo, width: 2, style: BorderStyle.solid),
                    left: BorderSide(
                        color: Colors.indigo, width: 2, style: BorderStyle.solid),
                  )),
                  child: Row(
                    children: [
                      SizedBox(
                        width: _mediaquery.width / 35,
                      ),
                      const Icon(
                        Icons.lock,
                        size: 32.5,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: _mediaquery.width / 17.5,
                      ),
                      Expanded(
                        child: TextFormField(
                          showCursor: true,
                          obscureText: !(_visible1),
                          controller: passwordcontroller1,
                          validator: (password1){

                            if( password1==null || password1.isEmpty)
                            {
                              return "incorrect format";
                            }
                            else if(password1.length>3)
                            {
                              return null;
                            }
                            else
                            {
                              return "length is than 3";
                            }
                          },
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Password",
                              errorStyle: TextStyle(
                                  fontSize: 15,
                                  height: 0.3,
                                  overflow: TextOverflow.ellipsis),
                              hintStyle:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          style: const TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      IconButton(
                        icon: (_visible1)
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                        iconSize: 27.5,
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            _visible1 = !(_visible1);
                          });
                        },
                      ),
                      SizedBox(width: _mediaquery.width / 70)
                    ],
                  )),
              const SizedBox(
                height: 30,
              ),
              Container(
                  width: _mediaquery.width * (4 / 5),
                  height: _mediaquery.height * (1 / 11.5),
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  constraints:
                      BoxConstraints(maxWidth: _mediaquery.width * (4 / 5)),
                  // padding: EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                      border: Border(
                    top: BorderSide(
                        color: Colors.indigo, width: 2, style: BorderStyle.solid),
                    bottom: BorderSide(
                        color: Colors.indigo, width: 2, style: BorderStyle.solid),
                    right: BorderSide(
                        color: Colors.indigo, width: 2, style: BorderStyle.solid),
                    left: BorderSide(
                        color: Colors.indigo, width: 2, style: BorderStyle.solid),
                  )),
                  child: Row(
                    children: [
                      SizedBox(
                        width: _mediaquery.width / 35,
                      ),
                      const Icon(
                        Icons.lock,
                        size: 32.5,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: _mediaquery.width / 17.5,
                      ),
                      Expanded(

                        child: TextFormField(
                          showCursor: true,
                          obscureText: !(_visible2),
                          controller: passwordcontroller2,
                          validator: (password2){
                            if( password2==null || password2.isEmpty)
                            {
                              return "incorrect format";
                            }
                            else if(password2.length<3)
                            {
                              return "length is than 3";
                            }
                            else if( passwordcontroller2.text!=passwordcontroller1.text)
                            {
                              return "password not same";
                            }
                            else
                              {
                                return null;
                              }
                          },
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Re-enter Password",
                              errorStyle: TextStyle(
                                  fontSize: 15,
                                  height: 0.3
                                  ),
                              hintStyle:
                                  TextStyle(color: Colors.white, fontSize: 20)),
                          style: const TextStyle(color: Colors.white, fontSize: 20,
                          height: 1.0),
                        ),
                      ),
                      IconButton(
                        icon: (_visible2)
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                        iconSize: 27.5,
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            _visible2 = !(_visible2);
                          });
                        },
                      ),
                      SizedBox(width: _mediaquery.width / 70)
                    ],
                  )),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: () {
                  if(_formkey.currentState!.validate())
                  {
                    FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailcontroller.text, password: passwordcontroller1.text);
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const mainscreen()));
                    });
                  }
                },
                child: Container(
                  height: _mediaquery.height / 13,
                  width: _mediaquery.width * (4 / 5) - 30,

                  // color: Colors.blueAccent,
                  alignment: Alignment.center,
                  child: const Text(
                    'Register',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )

              ,
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
