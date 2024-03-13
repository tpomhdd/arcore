import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter_ar_with_google/Compass.dart';
import 'package:flutter_ar_with_google/mhdar.dart';

import 'package:flutter_ar_with_google/myar.dart';


Future<void> main() async {
//  Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);



  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    HttpOverrides.global=MyHttpOverrides();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:mhdar(),

    );
  }
}


class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}