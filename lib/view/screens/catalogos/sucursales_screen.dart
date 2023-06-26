import 'package:flutter/material.dart';

class SucursalScreen extends StatelessWidget {
  static const String name = 'sucursales_screen';
  const SucursalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sucursales'),
      ),
      body: const Placeholder(),
    );
  }
}