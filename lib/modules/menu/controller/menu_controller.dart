import 'dart:async';
import 'dart:convert';
import 'package:dw3_desafios/application/entities/menu.dart';
import 'package:injectable/injectable.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

part 'menu_controller.g.dart';

@Injectable()
class MenuController {
  List<Menu> menu = [
    Menu(id: 1, name: 'Mussarela', price: 35.00),
    Menu(id: 1, name: 'Calabreza', price: 35.00),
    Menu(id: 1, name: 'Quatro Queijos', price: 35.00),
  ];

  @Route.get('/')
  Future<Response> findAll(Request request) async {
    return Response.ok(jsonEncode(menu?.map((e) => e.toMap())?.toList() ?? []));
  }

  Router get router => _$MenuControllerRouter(this);
}
