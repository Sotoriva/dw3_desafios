import 'package:__projectName__/application/database/i_database_connection.dart';
import 'package:__projectName__/application/exceptions/database_error_exception.dart';
import 'package:__projectName__/entities/menu.dart';
import 'package:__projectName__/repositories/menu/i_menu_respository.dart';
import 'package:injectable/injectable.dart';
import 'package:mysql1/mysql1.dart';

@LazySingleton(as: IMenuRepository)
class MenuRepository implements IMenuRepository {
  final IDatabaseConnection _connection;

  MenuRepository(this._connection);

  @override
  Future<List<Menu>> findAll() async {
    final conn = await _connection.openConnection();

    try {
      final result = await conn.query('SELECT * FROM cardapio_grupo_item');

      if (result.isNotEmpty) {
        final menus = result.map<Menu>((row) {
          return Menu(
            id: row['id_cardapio_grupo_item'] as int,
            name: row['nome'] as String,
            price: row['valor'] as double,
          );
        }).toList();

        return menus;
      }

      return [];
    } on MySqlException catch (e) {
      print(e);
      throw DatabaseErrorException();
    } finally {
      await conn?.close();
    }
  }
}
