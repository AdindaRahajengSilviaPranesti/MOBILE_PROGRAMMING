import 'dart:async';

import 'package:fisrtapp02/misc/constants.dart';
import 'package:flutter/material.dart';

import '../routes/route_manager.dart';
import '../widgets/app_progress_indicator.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  //implement init state to initialize app
  void initState() {
    //set timer before directing to next page
    Timer(
        //set time in seconds
        const Duration(seconds: 5), () {
      //go to login page after 5 seconds of the loading page
      Navigator.popAndPushNamed(context, RouteManager.loginPage);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png', // Ganti dengan path yang sesuai ke logo.png
            width: 400, // Sesuaikan dengan ukuran yang Anda inginkan
            height: 400, // Sesuaikan dengan ukuran yang Anda inginkan
          ),
          SizedBoxH30(),
          const AppProgressIndicator(),
        ],
      )),
    );
  }
}
