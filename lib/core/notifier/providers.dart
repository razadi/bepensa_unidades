import 'package:bepensa_unidades/view_model/view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class AplicationProvider {

  AplicationProvider._init();

  static AplicationProvider? _instance;
  static AplicationProvider get instance {
    _instance ??= AplicationProvider._init();
    return _instance!;
  }

  List<SingleChildWidget> dependItems = [
    ChangeNotifierProvider(create: (_) => AuthViewModel()),
    ChangeNotifierProvider(create: (_) => CatalogosViewModel())
  ];
}