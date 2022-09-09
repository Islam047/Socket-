import 'dart:convert';
OrderBookModel orderBookModelFromJson(String str) => OrderBookModel.fromJson(json.decode(str));
String orderBookModelToJson(OrderBookModel data) => json.encode(data.toJson());

class OrderBookModel {
  OrderBookModel({
    this.topic,
    this.action,
    this.symbol,
    this.data,
    this.time,});

  OrderBookModel.fromJson(Map json) {
    topic = json['topic'];
    action = json['action'];
    symbol = json['symbol'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    time = json['time'];
  }
  String? topic;
  String? action;
  String? symbol;
  Data? data;
  num? time;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['topic'] = topic;
    map['action'] = action;
    map['symbol'] = symbol;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    map['time'] = time;
    return map;
  }

}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
    this.bids,
    this.asks,
    this.timestamp,});

  Data.fromJson(dynamic json) {
    bids = json['bids'] ?? [];
    asks = json['asks'] ?? [];
    timestamp = json['timestamp'];
  }
  List? bids;
  List? asks;
  String? timestamp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['bids'] = bids;
    map['asks'] = asks;
    map['timestamp'] = timestamp;
    return map;
  }

}