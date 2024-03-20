import 'package:flutter/material.dart';
import 'package:ud4_4_hola_mundo/presentation/screens/counter/counter_functions_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, 
        theme: ThemeData( //tema claro/oscuro dependiendo config del dispositivo
          useMaterial3: true, //aspecto algo diferente al 2
          colorSchemeSeed: Colors.green
        ), 
        home: const CounterFunctionsScreen());
  }
}
