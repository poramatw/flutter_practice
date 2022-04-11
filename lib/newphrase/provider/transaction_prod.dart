import 'package:flutter/foundation.dart';
import 'package:flutter_practice/newphrase/models/transaction.dart';

class TransectionProvider with ChangeNotifier {
  List<Transactions> transactions = [
    Transactions("STANDARD", "MT4-123456789", 500, 200, 100, "abcdefg",
        "zxcvzxcvzxcv", "sadfasdfasdf"),
    Transactions("STANDARD", "MT4-123456789", 500, 200, 100, "abcdefg",
        "zxcvzxcvzxcv", "sadfasdfasdf"),
    Transactions("STANDARD", "MT4-123456789", 500, 200, 100, "abcdefg",
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
