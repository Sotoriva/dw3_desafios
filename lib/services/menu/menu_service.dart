import 'package:__projectName__/entities/menu.dart';
import 'package:__projectName__/repositories/menu/i_menu_respository.dart';
import 'package:__projectName__/services/menu/i_menu_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IMenuService)
class MenuService implements IMenuService {
  final IMenuRepository _repository;

  MenuService(this._repository);

  @override
  Future<List<Menu>> getAllMenus() {
    return _repository.findAll();
  }
}
