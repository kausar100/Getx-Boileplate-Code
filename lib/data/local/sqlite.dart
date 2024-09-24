import 'package:sqflite/sqflite.dart';

import 'database_helper.dart';

class Sqlite {
  Sqlite() {
    initSqlite();
  }

  late Database _db;

  void initSqlite() async {
    _db = await DatabaseHelper.initDatabase();
  }
}
