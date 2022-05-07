import 'package:delivery/model/provider/theme_provider.dart';
import 'package:delivery/translations/codegen_loader.g.dart';
import 'package:delivery/view/screens/homeScreen.dart';
import 'package:delivery/view/widgets/theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        path: 'assets/translations/',
        supportedLocales: const [
          Locale('en'),
          Locale('ar'),
        ],
        fallbackLocale: const Locale('en'),
        assetLoader: const CodegenLoader(),
        child: MultiProvider(providers: [
          ChangeNotifierProvider(create: (context) => ThemeProvider()),
        ], child: const Delivery())),
  );
}

class Delivery extends StatelessWidget {
  const Delivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: light,
      darkTheme: dark,
      themeMode: Provider.of<ThemeProvider>(context).isDark
          ? ThemeMode.dark
          : ThemeMode.light,
      home: const HomeScreen(),
    );
  }
}
