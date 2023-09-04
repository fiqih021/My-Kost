import 'package:mykost/pages/create.dart';
import 'package:mykost/pages/edit.dart';
import 'package:mykost/pages/home.dart';

class AppRoutes {
  static const home = 'home';
  static const create = 'create';
  static const edit = 'edit';
}

final routes = {
  AppRoutes.home: (context) => const Home(),
  AppRoutes.create: (context) => const CreateData(),
  AppRoutes.edit: (context) => const EditData(),
};
