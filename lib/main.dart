import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stroll/presentation/views/question.screen.dart';

Future<void> main() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(const MyApp());
  }, (exception, stackTrace) async {
    debugPrintStack(stackTrace: stackTrace);
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Stroll',
      defaultTransition: Transition.rightToLeft,
      locale: const Locale('en', 'US'),
      debugShowCheckedModeBanner: true,
      fallbackLocale: const Locale('en', 'US'),
      themeMode: ThemeMode.light,
      darkTheme: ThemeData.light(),
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const QuestionIndexView(),
    );
  }
}
