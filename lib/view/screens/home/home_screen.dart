import 'package:bepensa_unidades/utils/menu/bm_menu.dart';
import 'package:bepensa_unidades/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {

  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _HomeView()
    );
  }
}

class _HomeView extends StatelessWidget {

  void openDialog(BuildContext context) {
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Container(
          color: BmColors.colorComplementary2,
          height: 20,
          width: 100,
          child: const Text('Titulo del dialog'),
        ),
        content: const Text('contenido del dialogo de esta app que se muestra en el lugar adecuado'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(onPressed: () => context.pop(), child: const Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bepensa'),
      ),
      drawer: Drawer(
        child: ListView.builder(
          itemCount: bmMenuItems.length,
          itemBuilder: (context, index) {
            final menuItems = bmMenuItems[index];

            return _BmListTile(menuItems: menuItems);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(onPressed: (){
              showAboutDialog(context: context, children: [ const Text('Algo dentro del dialogo')]);              
            }, child: const Text('Licencias', style: TextStyle(color: BmColors.colorWhite),)),
            const SizedBox(height: 20,),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text('Dialogo', style: TextStyle(color: BmColors.colorWhite)))
          ],
        ),
      ),
    );
  }
}

class _BmListTile extends StatelessWidget {
  const _BmListTile({
    required this.menuItems,
  });

  final BmMenu menuItems;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(menuItems.icon),
      trailing: const Icon(Icons.arrow_forward_ios_rounded, color: BmColors.colorPrimaryInterfaz,),
      title: Text(menuItems.title),
      onTap: () {
        context.push(menuItems.link);
        // context.pushNamed(name)
      },
    );
  }
}