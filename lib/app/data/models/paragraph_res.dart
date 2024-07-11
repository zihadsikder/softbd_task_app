import 'dart:convert';

ParagraphRes paragraphResFromJson(String str) => ParagraphRes.fromJson(json.decode(str));

String paragraphResToJson(ParagraphRes data) => json.encode(data.toJson());

class ParagraphRes {
  final List<Data>? data;

  ParagraphRes({
    this.data,
  });

  factory ParagraphRes.fromJson(Map<String, dynamic> json) => ParagraphRes(
    data: json["data"] == null ? [] : List<Data>.from(json["data"]!.map((x) => Data.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class Data {
  final String? date;
  final String? name;
  final String? category;
  final String? location;

  Data({
    this.date,
    this.name,
    this.category,
    this.location,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
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
