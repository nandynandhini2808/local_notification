import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo/db/db_helper.dart';
import 'package:todo/services/theme_services.dart';
import 'package:todo/ui/home_page.dart';
import 'package:todo/ui/theme.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DBHelper.initDb();
  await GetStorage.init();// until its initialize above line will be process
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeService().theme,
      darkTheme: Themes.dart,
      theme: Themes.light,
      home: HomePage()
    );
  }
}


