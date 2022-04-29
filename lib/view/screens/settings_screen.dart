import 'package:delivery/model/provider/theme_provider.dart';
import 'package:delivery/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool val = false;
  int gValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                      Text(
                        LocaleKeys.settings.tr(),
                        style: const TextStyle(fontSize: 25,fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.05,
                  ),
                  Row(
                    children: [
                      Text(
                        LocaleKeys.account_info.tr(),
                        style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
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
                      Text(
                        LocaleKeys.settings.tr(),
                        style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
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
                      Text(
                        LocaleKeys.change_email.tr(),
                        style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
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
                      Text(
                        LocaleKeys.change_pass.tr(),
                        style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
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
                      Text(
                        LocaleKeys.dark_mode.tr(),
                        style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                      ),
                      const Spacer(),
                      buildSwitch(),
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
                          builder:(context)=> AlertDialog(
                            title: Center(
                              child: Text(
                                LocaleKeys.change_lang.tr(),
                                style: const TextStyle(fontSize: 25,fontWeight: FontWeight.w700),
                              ),
                            ),
                            content: SizedBox(
                              height: MediaQuery.of(context).size.height*0.22,
                              width: MediaQuery.of(context).size.width*0.7,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height*0.02,
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        'العربية',
                                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                                      ),
                                      const Spacer(),
                                      Radio<int>(
                                        value: 2,
                                        groupValue: gValue,
                                        onChanged: (value) {
                                          setState(() {
                                            gValue = value!;
                                          });
                                          context.setLocale(const Locale('ar'));
                                          Navigator.pop(context);
                                        },
                                        activeColor: Colors.deepOrange,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.only(bottom: 15,top: 15),
                                    child: Divider(
                                      thickness: 1.5,
                                      color: Colors.grey.shade200,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        'English',
                                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                                      ),
                                      const Spacer(),
                                      Radio<int>(
                                        value: 3,
                                        groupValue: gValue,
                                        onChanged: (value){
                                          setState(() {
                                            gValue = value!;
                                          });
                                          context.setLocale(const Locale('en'));
                                          Navigator.pop(context);
                                        },
                                        activeColor: Colors.deepOrange,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),);
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          LocaleKeys.language.tr(),
                          style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          LocaleKeys.english.tr(),
                          style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Colors.orange),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.02,
                  ),
                  Divider(
                    thickness: 1,
                    color: Colors.grey.shade300,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.02,
                  ),
                  Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       LocaleKeys.country.tr(),
                       style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                     ),
                     const SizedBox(
                       height: 15,
                     ),
                     Text(
                       LocaleKeys.egypt.tr(),
                       style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w600,color: Colors.orange),
                     ),
                   ],
                 ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.05,
                  ),
                  Text(
                    LocaleKeys.logout.tr(),
                    style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Switch Button
  Widget buildSwitch()=> Transform.scale(
    scale: 1.2,
    child: Switch(
      value: val,
      onChanged: (value){
        Provider.of<ThemeProvider>(context,listen: false).changeTheme();

        setState(() {
          val = value;
        });
      },
      activeTrackColor: Colors.orangeAccent,
      activeColor: Colors.deepOrange,
      splashRadius: 30,
    ),
  );
}

