import 'package:delivery/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Notice extends StatefulWidget {
  const Notice({Key? key}) : super(key: key);

  @override
  _NoticeState createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 20,start: 20,end: 20,bottom: 5),
      child: Visibility(
        visible: isVisible,
        child: Container(
          height: MediaQuery.of(context).size.height*0.13,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.deepPurple[50],
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      LocaleKeys.safety.tr(),
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        child: const Padding(
                          padding: EdgeInsetsDirectional.only(end: 10),
                          child: Icon(Icons.cancel),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  LocaleKeys.learn_more.tr(),
                  style: TextStyle(
                      color: Colors.amber[800],
                      fontWeight: FontWeight.w600,
                      fontSize: 20
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
