import 'package:__projectName__/application/middlewares/routers/i_router_configure.dart';
import 'package:__projectName__/modules/menu/menu_router.dart';
import 'package:shelf_router/src/router.dart';

class RouterConfigure {
  final Router _router;
  final List<IRouterConfigure> routers = [
    MenuRouter(),
  ];

  RouterConfigure(this._router);

  void configure() => routers.forEach((element) => element.configure(_router));
}