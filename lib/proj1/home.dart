import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("Blood Donation App"),
        backgroundColor: Colors.red,
      ),

      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushNamed(context, '/add');
      },
      backgroundColor: Colors.red,
      child: const Icon(
        Icons.add,
        size: 40,),
        
        ),
    floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,);
  }
}