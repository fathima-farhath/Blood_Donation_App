

import 'package:flutter/material.dart';
import 'proj1/home.dart';
import 'proj1/add.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/':(context) => const HomeWidget(),
        // ignore: prefer_const_constructors
        '/add':(context) =>AddUser(), 
      },
      initialRoute: '/',
  );
  }
}


