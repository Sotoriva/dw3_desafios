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
    Menu(id: 1, name: 'Calabresa C/ Catupiry', price: 49.99),
    Menu(id: 1, name: 'Calabresa C/ Catupiry', price: 49.99),
  ];

  @Route.get('/')
  Future<Response> findAll(Request request) async {
    try {
      return Response.ok(
        jsonEncode(menu?.map((e) => e.toMap())?.toList() ?? []),
      );
    } catch (e) {
      print(e);
      return Response.internalServerError();
    }
  }

  Router get router => _$MenuControllerRouter(this);
}
