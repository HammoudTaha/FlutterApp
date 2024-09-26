import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class MyDataBase {
  static Database? _database;

  Future<Database> get medatabase async {
    _database ??= await intialDataBase();
    return _database!;
  }

  Future<Database> intialDataBase() async {
    String databasepath = await getDatabasesPath();
    String path = join(databasepath, 'Hammoud.db');
    //await deleteDatabase(path);
    Database database = await openDatabase(
      path,
      onCreate: _onCreate,
      onUpgrade: _onUpgrade,
      version: 2,
    );
    return database;
  }

  void _onCreate(Database databse, int version) {
    databse.execute(
        'CREATE TABLE User (id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT NOT NULL )');
  }

  void _onUpgrade(Database database, int oldversion, int newversion) {}

  Future<List<Map>> readInformation(String sql) async {
    Database database = await medatabase;
    List<Map> info = await database.rawQuery(sql);
    return info;
  }

  Future<int> deleteInformation(String sql) async {
    Database database = await medatabase;
    int info = await database.rawDelete(sql);
    return info;
  }

  Future<int> updataInformation(String sql) async {
    Database database = await medatabase;
    int info = await database.rawUpdate(sql);
    return info;
  }

  Future<List> insertInformation(
      String table, Map<String, dynamic> values) async {
    Database database = await medatabase;
    Batch batch = database.batch();
    batch.insert(table, values);
    List results = await batch.commit();
    return results;
    // int info = await database.rawInsert(sql);
    // var bat = database.batch();
  }
}
