// To parse this JSON data, do
//
//     final animeListModel = animeListModelFromJson(jsonString);

import 'dart:convert';

AnimeListModel animeListModelFromJson(String str) => AnimeListModel.fromJson(json.decode(str));

String animeListModelToJson(AnimeListModel data) => json.encode(data.toJson());

class AnimeListModel {
  List<Datum>? data;
  Meta? meta;

  AnimeListModel({
    this.data,
    this.meta,
  });

  factory AnimeListModel.fromJson(Map<String, dynamic> json) => AnimeListModel(
        data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
        "meta": meta?.toJson(),
      };
}

class Datum {
  String? id;
  String? title;
  List<String>? alternativeTitles;
  int? ranking;
  List<String>? genres;
  int? episodes;
  bool? hasEpisode;
  bool? hasRanking;
  String? image;
  String? link;
  String? status;
  String? synopsis;
  String? thumb;
  String? type;

  Datum({
    this.id,
    this.title,
    this.alternativeTitles,
    this.ranking,
    this.genres,
    this.episodes,
    this.hasEpisode,
    this.hasRanking,
    this.image,
    this.link,
    this.status,
    this.synopsis,
    this.thumb,
    this.type,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["_id"],
        title: json["title"],
        alternativeTitles: json["alternativeTitles"] == null ? [] : List<String>.from(json["alternativeTitles"]!.map((x) => x)),
        ranking: json["ranking"],
        genres: json["genres"] == null ? [] : List<String>.from(json["genres"]!.map((x) => x)),
        episodes: json["episodes"],
        hasEpisode: json["hasEpisode"],
        hasRanking: json["hasRanking"],
        image: json["image"],
        link: json["link"],
        status: json["status"],
        synopsis: json["synopsis"],
        thumb: json["thumb"],
        type: json["type"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "title": title,
        "alternativeTitles": alternativeTitles == null ? [] : List<dynamic>.from(alternativeTitles!.map((x) => x)),
        "ranking": ranking,
        "genres": genres == null ? [] : List<dynamic>.from(genres!.map((x) => x)),
        "episodes": episodes,
        "hasEpisode": hasEpisode,
        "hasRanking": hasRanking,
        "image": image,
        "link": link,
        "status": status,
        "synopsis": synopsis,
        "thumb": thumb,
        "type": type,
      };
}

class Meta {
  int? page;
  int? size;
  int? totalData;
  int? totalPage;

  Meta({
    this.page,
    this.size,
    this.totalData,
    this.totalPage,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        page: json["page"],
        size: json["size"],
        totalData: json["totalData"],
        totalPage: json["totalPage"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "size": size,
        "totalData": totalData,
        "totalPage": totalPage,
      };
}
