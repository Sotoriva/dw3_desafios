import 'package:dw3_desafios/application/entities/menu.dart';

abstract class IMenuRepository {
  Future<List<Menu>> findAll();
}