import 'package:delivery/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8,),
        child: ListView(
          children: <Widget>[
            buildMenuItem(text: LocaleKeys.home.tr(), icon: Icons.home, trText: ''),
            const SizedBox(
              height: 15,
            ),
            buildMenuItem(text: LocaleKeys.your_order.tr(), icon: Icons.list_alt, trText: ''),
            const SizedBox(
              height: 15,
            ),
            buildMenuItem(text: LocaleKeys.offers.tr(), icon: Icons.local_offer, trText: ''),
            const SizedBox(
              height: 15,
            ),
            buildMenuItem(text: LocaleKeys.notifi.tr(), icon: Icons.notifications_none, trText: ''),
            const SizedBox(
              height: 15,
            ),
            buildMenuItem(text: LocaleKeys.talabat_pay.tr(), icon: Icons.payment, trText: 'EGP 0.00'),
            const SizedBox(
              height: 15,
            ),
            buildMenuItem(text: LocaleKeys.get_help.tr(), icon: Icons.question_mark, trText: ''),
            const SizedBox(
              height: 15,
            ),
            buildMenuItem(text: LocaleKeys.about.tr(), icon: Icons.announcement, trText: ''),
          ],
        ),
      ),
    );
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  required String trText,
}) {
  return ListTile(
    leading: Icon(icon, size: 25,
    ),
    title: Text(
      text,
      style: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.w800),
    ),
    trailing: Text(
      trText,
      style: const TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.w600,fontSize: 16),
    ),
    onTap: () {},
  );
}