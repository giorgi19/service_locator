import 'package:flutter/material.dart';
import 'package:service_locator/service_locator.dart';
import 'package:service_locator/user.dart';

void main() {
  runApp(MyApp());
  registerDependencies();
}

void registerDependencies() {
  ServiceLocator.register<User>(() => User());
}

class MyApp extends StatelessWidget {
  final userStore = ServiceLocator.get<User>();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
