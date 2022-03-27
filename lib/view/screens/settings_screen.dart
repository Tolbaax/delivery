import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 40,start: 20,end: 20),
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
          Center(
            child: Container(
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
                  children: [
                    const Text(
                      'Notifications',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                    ),
                    const Spacer(),
                    buildSwitch()
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(top: 30,start: 20,end: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    showDialog(context: context,
                        builder:(context)=> const AlertDialog(
                          title: Center(
                            child: Text(
                              'Change language',
                              style: TextStyle(fontSize: 22),
                            ),
                          ),
                        ));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Language',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'English',
                        style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Colors.orange),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.02,
                ),
                const Divider(
                  thickness: 1.5,
                  color: Colors.black26,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.02,
                ),
                Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: const [
                   Text(
                     'Country',
                     style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                   ),
                   SizedBox(
                     height: 15,
                   ),
                   Text(
                     'Egypt',
                     style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Colors.orange),
                   ),
                 ],
               ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.05,
                ),
                const Text(
                  'Logout',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  //Switch Button
  Widget buildSwitch()=> Transform.scale(
    scale: 1.3,
    child: Switch(
      value: value,
      onChanged: (value)=>setState(()=> this.value = value),
      activeTrackColor: Colors.orangeAccent,
      activeColor: Colors.deepOrange,
      splashRadius: 30,
    ),
  );
}
