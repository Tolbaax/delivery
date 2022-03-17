import 'package:delivery/model/category_model.dart';
import 'package:delivery/view/widgets/category.dart';
import 'package:delivery/view/widgets/notice.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,color: Colors.black,size: 30,),
        title: Center(
          child: Column(
            children: [
              Text(
                  'Delivering to',
                style: TextStyle(color: Colors.grey[600],fontSize: 17),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Gehan Al Sadat,Mansoura',
                    style: TextStyle(
                      color: Colors.amber[800],fontSize: 20
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,color: Colors.amber[800],size: 30,),
                ],
              ),
            ],
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsetsDirectional.only(end: 10),
            child: Icon(
              Icons.search,color: Colors.black,size: 30,
            ),
          ),
        ],
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children:  [
            const Notice(),
            const Padding(
              padding: EdgeInsetsDirectional.only(top: 20,end: 20,start: 20,bottom: 20),
              child: Text(
                'What would you like to order, Tolba',
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600),
              ),
            ),
            Category(),
          ],
        ),
      ),
    );
  }
}
