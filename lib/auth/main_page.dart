// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vamoos/auth/auth_page.dart';
import 'package:vamoos/auth/login_page.dart';
import '../Pages/Host/host_page.dart';
import '../Pages/User/navigation_home_screen.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.isHost});
  final bool isHost;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // bool ishost = FirebaseAuth.instance.currentUser == null
          //     ? false
          //     : box.read(FirebaseAuth.instance.currentUser!.uid.toString())[
          //             'isHost'] ??
          //         false;
          // log(box.read('isHost'));
          if (snapshot.hasData) {
            return NavigationHomeScreen(); // ishost ? HostPage() :
          } else {
            return AuthPage();
          }
        },
      ),
    );
  }
}
