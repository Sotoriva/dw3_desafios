import 'package:__projectName__/entities/menu.dart';

abstract class IMenuService {
  Future<List<Menu>> getAllMenus();
}