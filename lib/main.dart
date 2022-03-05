import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:moni/utils/functions.dart';
import 'package:moni/views/error/no_internet.dart';
import 'package:moni/views/home/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Widget pageToRender = Home();

  @override
  void initState() {
    super.initState();
    isConnected().then((value) {
      if (!value) {
        Get.to(() => const NoInternet());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'NotoSans',
       
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: pageToRender,
    );
  }
}
