import 'package:delivery/model/category_model.dart';
import 'package:delivery/view/widgets/category_widget.dart';
import 'package:delivery/view/widgets/details_widget.dart';
import 'package:delivery/view/widgets/menu_items.dart';
import 'package:delivery/view/widgets/my_drawer_header.dart';
import 'package:delivery/view/widgets/notice_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var key = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.85,
        child: Drawer(
          child: Column(
            children: const [
              MyDrawerHeader(),
              MenuItems(),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            key.currentState!.openDrawer();
          },
          child: const Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
        ),
        title: Center(
          child: Column(
            children: [
              Text(
                'Delivering to',
                style: TextStyle(color: Colors.grey[600], fontSize: 17),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Gehan Al Sadat,Mansoura',
                    style: TextStyle(color: Colors.amber[800], fontSize: 20),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.amber[800],
                    size: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsetsDirectional.only(end: 10),
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Notice(),
            const Padding(
              padding: EdgeInsetsDirectional.only(
                  top: 10, end: 20, start: 20, bottom: 20),
              child: Text(
                'What would you like to order, Tolba',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.28,
                child: ListView.builder(
                    itemCount: categoryList.length,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return CategoryWidget(
                        category: categoryList[index],
                      );
                    }),
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(
                  start: 20.0, top: 20.0, bottom: 20.0),
              child: Text(
                'Groceries and more',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return const Details();
                    }),
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.only(
                  start: 20.0, top: 20.0, bottom: 20.0),
              child: Text(
                'All day deserts',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return const Details();
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(top: 25, bottom: 20),
              child: Center(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.082,
                  width: MediaQuery.of(context).size.width * 0.88,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.orange.shade700),
                  child: const Center(
                    child: Text(
                      'View all restaurant',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

