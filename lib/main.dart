import 'package:bepensa_unidades/core/notifier/providers.dart';
import 'package:bepensa_unidades/core/routes/bm_routes.dart';
import 'package:bepensa_unidades/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [...AplicationProvider.instance.dependItems],
      child: MaterialApp.router(
        title: 'BEPENSA Unidades',
        debugShowCheckedModeBanner: false,
        theme: BmTheme().getTheme(),
        routerConfig: bmRouter,
      ),
    );
  }
}
