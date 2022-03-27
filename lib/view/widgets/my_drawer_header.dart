import 'package:flutter/material.dart';

import '../screens/settings_screen.dart';

class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 15,top: 40,end: 10,bottom: 25),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const SettingsScreen()));
          },
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width*0.13,
              height: MediaQuery.of(context).size.height*0.065,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.brown.shade800
              ),
              child: const Center(child: Text(
                'M',
                style: TextStyle(color: Colors.white,fontSize: 25),
              ),),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Mohamed Tolba',
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),
                ),
                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height*0.045,
                      width: MediaQuery.of(context).size.width*0.058,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.brown.shade800,
                        image: const DecorationImage(
                          image: NetworkImage('https://cdn.shopify.com/s/files/1/1257/4459/products/egypt_large.gif?v=1527489123'),
                          fit: BoxFit.cover
                        )
                      ),
                      ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Egypt',
                      style: TextStyle(
                          fontSize: 20,fontWeight: FontWeight.w600,color: Colors.grey
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Icon(
              Icons.settings,size: 30,color: Colors.grey.shade600,
            ),
          ],
        ),
      ),
    );
  }
}
