import 'package:countryinfo/presentation/home_view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// -- user this class to setup themes, initial bindings , any animations and mush
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: HomeView(),
    );
  }
}
