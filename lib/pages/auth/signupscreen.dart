// import 'package:falconbytesolutinosportfolio/pages/home_Screen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// class Signupscreen extends StatelessWidget {
//   const Signupscreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final emailcontroller = TextEditingController();
//     final passwordsController = TextEditingController();
//
//
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Signup'),
//       ),
//       body: Column(
//         children: [
//           TextFormField(
//             controller: emailcontroller,
//           ),
//           TextFormField(
//             controller: passwordsController,
//           ),
//
//           ElevatedButton(onPressed: (){
//
//
//             if(emailcontroller.text.isEmpty && passwordsController.text.isEmpty){
//               ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Enter Credentails')));
//
//
//
//             }else{
//                   FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailcontroller.text, password: passwordsController.text).then((value){
//                     Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen(
//
//                     )));
//                   });
//                   }
//
//           }, child: Text('Signup'))
//         ],
//       ),
//     );
//   }
// }
