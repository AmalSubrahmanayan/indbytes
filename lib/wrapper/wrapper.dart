import 'package:flutter/material.dart';
import 'package:indbytes/model/user_model/user_model.dart';
import 'package:indbytes/service/auth_service/auth_service.dart';
import 'package:indbytes/view/bottom_nav/bottom_nav.dart';
import 'package:indbytes/view/sign_in/sign_in.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder<User?>(
        stream: authService.user,
        builder: (context, AsyncSnapshot<User?> snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            final User? user = snapshot.data;
            return user == null ? SignIn() : BottomNavBar();
          } else {
            return Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }
        });
  }
}
