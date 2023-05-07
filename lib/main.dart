import 'package:flutter/material.dart';
import 'package:pendataanwarga/providers/dashboard_provider.dart';
import 'package:pendataanwarga/views/login_view.dart';
import 'package:provider/provider.dart';

main(List<String> args) {
  runApp( MultiProvider(
    builder: (context, widget) {
      return const MaterialApp(
        home: LoginViews(),
      );
    }, providers: [
      ChangeNotifierProvider(
          create: (c)=>DashboardProvider()
      )
    ],
  ));
}