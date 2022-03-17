import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height*0.28,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder:
                (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height*0.28,
                      width: MediaQuery.of(context).size.width*0.43,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),

                        ),
                        image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8&w=1000&q=80'),
                            fit: BoxFit.cover
                        ),
                        color: Colors.teal,
                      ),
                    ),
                    const Positioned(
                      bottom: 15,left: 15,
                      child: Text(
                        'Food',style: TextStyle(
                          color: Colors.white,fontSize: 22,fontWeight: FontWeight.w600
                      ),),
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
