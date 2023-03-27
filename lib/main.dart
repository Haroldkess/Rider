  import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rider/presentation/screens/login/login_screen.dart';
import 'package:rider/services/provider_init.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: InitProvider.providerInit(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'WishWay',
          theme: ThemeData(),
          home: const LoginScreen(),
        ));
  }
}

