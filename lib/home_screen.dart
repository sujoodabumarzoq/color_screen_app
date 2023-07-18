// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'color_screen.dart';
import 'components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,


      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(child: Container(
            padding: EdgeInsets.all(25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: SweepGradient(
    colors: [
                        Colors.amber.withOpacity(.9),
                        Colors.amber.withOpacity(.5),
                      ] )


            ),
            child: const Text('color screen',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ))),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: GridView.count(

          physics: BouncingScrollPhysics(),

          crossAxisCount: 3,
          children: colorsList.map((colorItem) =>
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder:(context)=>ColorScreen(colorItem)));

                },
                child: Container(
                  margin: EdgeInsets.only(top: 5,bottom: 10,right: 10,left: 10),
                  decoration: BoxDecoration(
                      color: colorItem,
                      borderRadius: BorderRadius.circular(10),

                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(5,5),
                          color: Colors.grey,
                          blurRadius: 4,

                        )
                      ]
                  ),
                ),

              )
          )
              .toList(),

        ),
      ),

    );
  }
}
