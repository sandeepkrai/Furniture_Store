import 'package:flutter/material.dart';
import 'package:furniture_store/home_page.dart';
import 'package:furniture_store/home_page.dart';
import 'package:furniture_store/product_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'registration.dart';

import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showSpinner = false;
  final _auth = FirebaseAuth.instance;
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Furniture Store'),
        titleTextStyle: TextStyle(color: Colors.black),
      ),
      backgroundColor: Colors.blueGrey,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Flexible(
              //   child: Hero(
              //     tag: 'logo',
              //     child: Container(
              //       height: 200.0,
              //       child: Image.asset('images/logo.png'),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                cursorColor: Colors.red,
                onChanged: (value) {
                  email = value;
                },
                decoration:
                    kTextFieldDecoration.copyWith(hintText: 'Enter your email'),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  password = value;
                },
                decoration: kTextFieldDecoration.copyWith(
                    hintText: 'Enter your password'),
              ),
              SizedBox(
                height: 24.0,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red)),
                child: const Text('Login'),
                onPressed: () async {
                  setState(() {
                    showSpinner = false;
                  });
                  try {
                    final user = await _auth.signInWithEmailAndPassword(
                        email: email, password: password);
                    if (user != null) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => HomePage(
                            key: Key(''),
                          ),
                        ),
                      );
                    }

                    setState(() {
                      showSpinner = false;
                    });
                  } catch (e) {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
                  }
                },
              ),
              ElevatedButton(
                child: const Text('Register'),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green)),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RegistrationScreen(),
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:furniture_store/home_page.dart';
// import 'registration.dart';
// import 'package:firebase_auth/firebase_auth.dart';
//
//
// class login_screen extends StatefulWidget {
//   const login_screen({Key? key}) : super(key: key);
//
//   @override
//   State<login_screen> createState() => _login_screenState();
// }
//
// class _login_screenState extends State<login_screen> {
//   final auth = FirebaseAuth.instance;
//   String email = '';
//   String password = '';
//   TextEditingController nameController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//           padding: const EdgeInsets.all(10),
//           child: ListView(
//             children: <Widget>[
//               Container(
//                   alignment: Alignment.center,
//                   padding: const EdgeInsets.all(10),
//                   child: const Text(
//                     'Furniture Store',
//                     style: TextStyle(
//                         color: Colors.blue,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 30),
//                   )),
//               Container(
//                   alignment: Alignment.center,
//                   padding: const EdgeInsets.all(10),
//                   child: const Text(
//                     'Sign in',
//                     style: TextStyle(fontSize: 20),
//                   )),
//               Container(
//                 padding: const EdgeInsets.all(10),
//                 child: TextField(
//                   controller: nameController,
//                   onChanged: (value) {
//                     email = value;
//                   },
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'User Name',
//                   ),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
//                 child: TextField(
//                   obscureText: true,
//                   controller: passwordController,
//                   onChanged: (value) {
//                     password = value;
//                   },
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Password',
//                   ),
//                 ),
//               ),
//               TextButton(
//                 onPressed: () {
//                   //forgot password screen
//                 },
//                 child: const Text(
//                   'Forgot Password',
//                 ),
//               ),
//               Container(
//                   height: 50,
//                   padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
//                   child: ElevatedButton(
//                     child: const Text('Login'),
//                     onPressed: () {
//                       final user = _auth.signInWithEmailAndPassword(email: )
//                     },
//                     //   print(nameController.text);
//                     //   print(passwordController.text);
//                     //   Navigator.of(context).pushReplacement(MaterialPageRoute(
//                     //       builder: (_) => HomePage(key: Key(''))));
//                     // },
//                   )),
//               Row(
//                 children: <Widget>[
//                   const Text('Does not have account?'),
//                   TextButton(
//                     child: const Text(
//                       'Sign in',
//                       style: TextStyle(fontSize: 20),
//                     ),
//                     onPressed: () {
//                       Navigator.of(context).push(MaterialPageRoute(
//                         builder: (context) => RegistrationScreen(),
//                       ));
//                     },
//                   )
//                 ],
//                 mainAxisAlignment: MainAxisAlignment.center,
//               ),
//             ],
//           )),
//     );
//   }
// }
