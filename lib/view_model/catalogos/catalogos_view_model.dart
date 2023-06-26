import 'package:flutter/material.dart';

class CatalogosViewModel extends ChangeNotifier {
  
  bool initialLoading = true;
  List<dynamic> listsUnidadOperativa = [];  // UnidadOperativa

  Future<void> getUnidadesoperativas() async {
    // Todo: cargar las uniades
    notifyListeners();
  }

}