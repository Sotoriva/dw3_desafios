// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../database/database_connection.dart';
import 'database_connection_configuration.dart';
import '../database/i_database_connection.dart';
import '../../repositories/menu/i_menu_respository.dart';
import '../../services/menu/i_menu_service.dart';
import '../../modules/menu/controller/menu_controller.dart';
import '../../repositories/menu/menu_repository.dart';
import '../../services/menu/menu_service.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  gh.factory<IDatabaseConnection>(() => DatabaseConnection(get<DatabaseConnectionConfiguration>()));
  gh.lazySingleton<IMenuRepository>(() => MenuRepository(get<IDatabaseConnection>()));
  gh.lazySingleton<IMenuService>(() => MenuService(get<IMenuRepository>()));;
  gh.factory<MenuController>(() => MenuController(get<IMenuService>()));
  return get;
}
