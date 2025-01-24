

import 'package:flutter/material.dart';





Future<void> navigation(BuildContext context, Widget screens){
  return Navigator.push(context, MaterialPageRoute(builder: (context) => screens));
}

