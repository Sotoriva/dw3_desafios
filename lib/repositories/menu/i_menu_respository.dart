import 'package:__projectName__/entities/menu.dart';

abstract class IMenuRepository {
  Future<List<Menu>> findAll();
}