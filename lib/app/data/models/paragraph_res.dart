// To parse this JSON data, do
//
//     final paragraphRes = paragraphResFromJson(jsonString);

import 'dart:convert';

ParagraphRes paragraphResFromJson(String str) => ParagraphRes.fromJson(json.decode(str));

String paragraphResToJson(ParagraphRes data) => json.encode(data.toJson());

class ParagraphRes {
  final List<Datum>? data;

  ParagraphRes({
    this.data,
  });

  factory ParagraphRes.fromJson(Map<String, dynamic> json) => ParagraphRes(
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class Datum {
  final String? date;
  final String? name;
  final String? category;
  final String? location;

  Datum({
    this.date,
    this.name,
    this.category,
    this.location,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    date: json["date"],
    name: json["name"],
    category: json["category"],
    location: json["location"],
  );

  Map<String, dynamic> toJson() => {
    "date": date,
    "name": name,
    "category": category,
    "location": location,
  };
}
