
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {

  final CollectionReference donorname=FirebaseFirestore.instance.collection('donor');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text("Blood Donation App"),
        backgroundColor: Colors.red,
      ),

     body: StreamBuilder(
      stream: donorname.snapshots(),
      builder: (context,AsyncSnapshot snapshot) {
      if(snapshot.hasData){
        return ListView.builder(itemCount: snapshot.data!.docs.length,
        itemBuilder: (context, index) {
          final DocumentSnapshot donorSnap=snapshot.data.docs[index];
          return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          // color: Colors.amber,
          
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
             boxShadow: [
      BoxShadow(
        color: Colors.grey,
        blurRadius: 15.0, // soften the shadow
        spreadRadius: 5.0, //extend the shadow
        offset: Offset(
          5.0, // Move to right 5  horizontally
          5.0, // Move to bottom 5 Vertically
        ),
      )
    ],
            
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 30,
                    child: Text(donorSnap['blood_group'],style: 
                    TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:  CrossAxisAlignment.start,
                children: [
                  Text(
                     donorSnap['name'],style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    donorSnap['phone'].toString(),style: TextStyle(
                      fontSize: 18,
                   
                  ),)
                ],

              ),
              Row(
                children: [
                   IconButton(onPressed: (){}, icon: Icon(Icons.edit,
                   size: 30,
                    color: Colors.blue)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.delete,
                  size: 30,
                  color: Colors.red,))
                ],
              )
            ],
          ),
        ),
      );

        
        },);
      } 
      return Container();
     },),
    

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