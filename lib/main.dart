import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:indbytes/controller/bottom_nav_bar/bottom_nav_bar_controller.dart';
import 'package:indbytes/service/auth_service/auth_service.dart';
import 'package:indbytes/view/splash/splash_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(create: (context) => AuthService()),
        ChangeNotifierProvider(create: ((context) => BottomNavBarProvider())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
