import 'package:delivery/model/category_model.dart';
import 'package:delivery/view/widgets/category_widget.dart';
import 'package:delivery/view/widgets/details_widget.dart';
import 'package:delivery/view/widgets/menu_items.dart';
import 'package:delivery/view/widgets/my_drawer_header.dart';
import 'package:delivery/view/widgets/notice_widget.dart';
import 'package:delivery/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var key = GlobalKey<ScaffoldState>();
  List<CategoryModel> categoryList = [
    CategoryModel(
        name: LocaleKeys.food.tr(),
        imageUrl:
        'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8&w=1000&q=80'),
    CategoryModel(
        name: LocaleKeys.groceries.tr(),
        imageUrl:
        'https://www.basketful.co/wp-content/uploads/2020/08/grocery-delivery-services-1024x690-1-1.jpeg'),
    CategoryModel(
        name: LocaleKeys.desserts.tr(),
        imageUrl:
        'https://previews.123rf.com/images/annapustynnikova/annapustynnikova1610/annapustynnikova161000145/63948254-coffee-and-caramel-cake-mousse-dessert-on-a-black-plate-grey-stone-background-top-view-copy-space.jpg'),
  ];
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
                LocaleKeys.delivering_to.tr(),
                style: const TextStyle(color: Colors.grey, fontSize: 17),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    LocaleKeys.location.tr(),
                    style: TextStyle(color: Colors.amber[900], fontSize: 20,fontWeight: FontWeight.w600),
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
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Notice(),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                  top: 10, end: 20, start: 20, bottom: 20),
              child: Text(
                LocaleKeys.what_order.tr(),
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
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
            Padding(
              padding: const EdgeInsetsDirectional.only(
                  start: 20.0, top: 20.0, bottom: 20.0),
              child: Text(
                LocaleKeys.groceries_and_more.tr(),
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.34,
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
              padding: const EdgeInsetsDirectional.only(
                  start: 20.0, top: 20.0, bottom: 20.0),
              child: Text(
                LocaleKeys.all_day_desserts.tr(),
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 20),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.34,
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
                  child: Center(
                    child: Text(
                      LocaleKeys.view_resta.tr(),
                      style: const TextStyle(fontSize: 20, color: Colors.white),
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

