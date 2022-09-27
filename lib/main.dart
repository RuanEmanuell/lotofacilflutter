import 'package:flutter/material.dart';
import "package:firebase_core/firebase_core.dart";
import "../firebase_options.dart";

import "screens/home.dart";



Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options:DefaultFirebaseOptions.currentPlatform
  );

  runApp(MaterialApp(
    initialRoute:"/home",
    routes:{
      "/home":(context)=>HomeScreen()
    }
  ));
}

