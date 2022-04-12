import 'dart:io';

import 'package:flutter_practice/newphrase/models/transaction.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class TransactionDB {
  String dbName; //save data name

  TransactionDB({required this.dbName});

  Future<Database> openDatabase() async {
    Directory appDir = await getApplicationDocumentsDirectory();
    String dbLocation = join(appDir.path, dbName);

    DatabaseFactory dbFactory = await databaseFactoryIo;
    Database db = await dbFactory.openDatabase(dbLocation);
    return db;
  }

  //build store
  Future<int> InsertData(Transactions statement) async {
    //send data to store
    var db = await openDatabase();
    var store = intMapStoreFactory.store("expense");

    //JSON
    var keyID = store.add(db, {
      "acct_type": statement.acct_credits,
      "acct_number": statement.acct_number,
      "acct_margin": statement.acct_margin,
      "acct_credits": statement.acct_credits,
    });
    db.close();
    return keyID;
  }
}
