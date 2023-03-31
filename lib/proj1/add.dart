// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {

  final blood_group=['A+','A-','AB+','AB-','O+','O-','B+','B-'];
  String ? Selected_group;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("Add Donors"),
        centerTitle: true,
      
        backgroundColor: Colors.red,
      ),

      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.amber),
                    borderRadius:BorderRadius.circular(20),
                  ),
                  labelText:"Donor's Name",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                  ),
                  hintText: "Enter your name",
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                keyboardType: TextInputType.phone,
                maxLength: 10,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20),
                  ),
                  labelText:"Phone Number",
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                  hintText: "Enter your phone number",
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropdownButtonFormField(
                decoration: InputDecoration(label: Text(
                  "Select the blood group"
                )),
                items: blood_group.map((e) => DropdownMenuItem(
                child: Text(e),
                value: e,
                )).toList(), 
              onChanged:(val){
                Selected_group=val as String?;
              }),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
            
              },style: ButtonStyle(
                minimumSize: MaterialStatePropertyAll(Size(double.infinity,50 )),
                backgroundColor: MaterialStatePropertyAll(Colors.red),
                foregroundColor: MaterialStatePropertyAll(Colors.blue)
              )
              , child: Text("Submit",
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
              ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}