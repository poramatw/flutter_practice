import 'package:flutter/foundation.dart';
import 'package:flutter_practice/newphrase/database/transaction_db.dart';

import '../models/transaction.dart';

class TransactionProvider with ChangeNotifier {
  List<Transactions> transactions = [];

//call data
  List<Transactions> getTransaction() {
    return transactions;
  }

//add data
  void addTransaction(Transactions statement) async {
    var db = TransactionDB(dbName: "transactions.db");

    //save data
    await db.InsertData(statement);
    transactions.insert(0, statement);

    //notify Consummer
    notifyListeners();
  }
}
