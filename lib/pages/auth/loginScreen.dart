// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// import '../home_Screen.dart';
// class Loginscreen extends StatelessWidget {
//   const Loginscreen({super.key});
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
//         title: Text('Login'),
//       ),
//       body: Column(
//         children: [
//           TextFormField(
//             controller: emailcontroller,
//           ),
//           TextFormField(
//             controller: passwordsController,
//           ),
//           ElevatedButton(onPressed: (){
//
//
//       if(emailcontroller.text.isEmpty && passwordsController.text.isEmpty){
//         ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Enter Credentails')));
//
//
//
//       }else {
//         FirebaseAuth.instance.signInWithEmailAndPassword(
//             email: emailcontroller.text, password: passwordsController.text).then((value){
//           Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen(
//
//           )));
//         });
//       }
//
//
//           },
//
//               child: Text('Loghin'))
//
//         ],
//       ),
//     );
//   }
// }
