import 'package:delivery/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 15),
      child: SingleChildScrollView(
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
              width: MediaQuery.of(context).size.width*0.788,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    LocaleKeys.bob.tr(),
                    style: const TextStyle(fontSize: 22,fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      const Icon(
                          Icons.delivery_dining
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        LocaleKeys.within50min.tr(),
                        style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              LocaleKeys.grocery.tr(),
              style: const TextStyle(fontSize: 20,color: Colors.grey),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const Icon(Icons.gpp_good_rounded),
                Text(
                  LocaleKeys.good.tr(),
                  style: const TextStyle(fontSize: 17,color: Colors.grey),
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
                Text(
                  LocaleKeys.delivery_free.tr(),
                  style: const TextStyle(fontSize: 17,color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
