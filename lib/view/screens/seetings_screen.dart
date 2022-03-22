import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.all(20),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(Icons.menu,size: 30,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.26,
                    ),
                    const Text(
                      'Settings',
                      style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.07,
                ),
                Row(
                  children: [
                    const Text(
                      'Account info',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(end: 20),
                      child: Icon(
                        Icons.arrow_forward_ios,color: Colors.grey.shade700,size: 20,),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.05,
                ),
                Row(
                  children: [
                    const Text(
                      'Saved addresses',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(end: 20),
                      child: Icon(
                        Icons.arrow_forward_ios,color: Colors.grey.shade700,size: 20,),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.05,
                ),
                Row(
                  children: [
                    const Text(
                      'Change email',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(end: 20),
                      child: Icon(
                        Icons.arrow_forward_ios,color: Colors.grey.shade700,size: 20,),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.05,
                ),
                Row(
                  children: [
                    const Text(
                      'Change password',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(end: 20),
                      child: Icon(
                        Icons.arrow_forward_ios,color: Colors.grey.shade700,size: 20,),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.05,
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.085,
            width: MediaQuery.of(context).size.width*0.95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow:  [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  blurRadius: 6,
                  offset: const Offset(0,4),
                ),
              ]
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.only(start: 10,end: 30),
              child: Row(
                children: const [
                  Text(
                    'Notifications',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                  ),
                  Spacer(),
                  Icon(Icons.radio_button_checked,color: Colors.deepOrange,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
