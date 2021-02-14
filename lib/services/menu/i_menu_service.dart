import 'package:dw3_desafios/application/entities/menu.dart';

abstract class IMenuService {
  Future<List<Menu>> getAllMenus();
}