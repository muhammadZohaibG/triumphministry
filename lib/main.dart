import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';
import 'package:triumph_ministry/views/pages/home/component/tab_provider.dart';
import 'package:triumph_ministry/views/pages/splash/splash_screen.dart';
import 'constant/sizeconfig.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
        ]);
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (_) => TabProvider()),

          ],
          child: const GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Triumph Ministry',
            home: SplashScreen(),
          ),
        );
      });
    });
  }
}
