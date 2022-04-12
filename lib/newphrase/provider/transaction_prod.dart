import 'package:flutter/foundation.dart';

import '../models/transaction.dart';

class TransactionProvider with ChangeNotifier {
  List<Transactions> transactions = [
    Transactions("STANDARD", "MT4-987654321", 500, 200, 100, "abcdefg",
        "zxcvzxcvzxcv", "sadfasdfasdf"),
    Transactions("STANDARD", "MT4-123456789", 500, 200, 100, "abcdefg",
        "zxcvzxcvzxcv", "sadfasdfasdf"),
    Transactions("STANDARD", "MT4-155468798", 500, 200, 100, "abcdefg",
        "zxcvzxcvzxcv", "sadfasdfasdf"),
  ];

//call data
  List<Transactions> getTransaction() {
    return transactions;
  }

//add data
  void addTransaction(Transactions statement) {
    transactions.add(statement);
  }
}
