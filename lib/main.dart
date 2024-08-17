import 'package:flutter/material.dart';
import 'package:network_cloud/core/theme/theme.dart';
import 'package:network_cloud/pages/home_page.dart';
import 'package:network_cloud/pages/login_page.dart';
import 'package:network_cloud/pages/pm_manager_page.dart';
import 'package:network_cloud/pages/sub_const_pm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog App',
      theme: AppTheme.darkThemeMode,
       home: //PmManagerPage()
      LoginPage(),
      routes: {
         '/home': (context) => HomePage(),
       },
    );
  }
}
