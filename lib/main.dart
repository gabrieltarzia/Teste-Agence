import 'package:agence_task/Locale/appMessages.dart';
import 'package:agence_task/Routes/app_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'App/Bindings/initial.binds.dart';

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
      initialBinding: InitBindings(),
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      getPages: AppPages.routes,
      initialRoute: AppPages.login,
      translations: AppMessages(),
      locale: const Locale('pt', 'BR'),
      fallbackLocale: const Locale('en', 'US'),
    );
  }
}
