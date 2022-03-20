import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.17,
            width: MediaQuery.of(context).size.width*0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.teal,
              image: const DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2uZ_jqUDd5j7eXskeiJtr03mLtawMq0uoMZuSh2A5AQvelb-8Nzc3VekhnVru_t4Eyyc&usqp=CAU'),
                  fit: BoxFit.cover
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width*0.786,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Bob Marley',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                ),
                Row(
                  children: const [
                    Icon(
                        Icons.delivery_dining
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Within 50 min',
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          const Text(
            'Grocery',
            style: TextStyle(fontSize: 20,color: Colors.grey),
          ),
          Row(
            children: [
              const Icon(Icons.gpp_good_rounded),
              const Text(
                'Good',
                style: TextStyle(fontSize: 17,color: Colors.grey),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: Container(
                  height: 4,
                  width: 4,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle
                  ),
                ),
              ),
              const Text(
                'Delivery: Free',
                style: TextStyle(fontSize: 17,color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
