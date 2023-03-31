import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'lib.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialBinding: InitBinding(),
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      getPages: AppPages.routes,
      initialRoute: AppPages.login,
      translations: AppMessages(),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
    );
  }
}
