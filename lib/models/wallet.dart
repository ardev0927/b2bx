import 'package:flutter/cupertino.dart';

class Wallet {
  int? id;
  String? currency;
  Color? color;
  double? total;
  double? available;
  double? hold;
  String? symbol;

  Wallet({
    this.id,
    this.currency,
    this.color,
    this.total,
    this.available,
    this.hold,
    this.symbol,
  });
}
