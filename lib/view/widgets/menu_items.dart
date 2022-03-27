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
            buildMenuItem(text: 'Home', icon: Icons.home, trText: ''),
            const SizedBox(
              height: 15,
            ),
            buildMenuItem(text: 'Your order', icon: Icons.list_alt, trText: ''),
            const SizedBox(
              height: 15,
            ),
            buildMenuItem(text: 'Offers', icon: Icons.local_offer, trText: ''),
            const SizedBox(
              height: 15,
            ),
            buildMenuItem(text: 'Notifications', icon: Icons.notifications_none, trText: ''),
            const SizedBox(
              height: 15,
            ),
            buildMenuItem(text: 'Talabat Pay', icon: Icons.payment, trText: 'EGP 0.00'),
            const SizedBox(
              height: 15,
            ),
            buildMenuItem(text: 'Get help', icon: Icons.question_mark, trText: ''),
            const SizedBox(
              height: 15,
            ),
            buildMenuItem(text: 'About', icon: Icons.announcement, trText: ''),
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
  const color = Colors.black;
  return ListTile(
    leading: Icon(icon, color: color, size: 25,
    ),
    title: Text(
      text,
      style: const TextStyle(
          color: color, fontSize: 20, fontWeight: FontWeight.w600),
    ),
    trailing: Text(
      trText,
      style: const TextStyle(color: Colors.orangeAccent, fontWeight: FontWeight.w600,fontSize: 16),
    ),
    onTap: () {},
  );
}