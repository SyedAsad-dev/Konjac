// To parse this JSON data, do
//
//     final newsModel = newsModelFromJson(jsonString);

import 'dart:convert';

NewsModel newsModelFromJson(String str) => NewsModel.fromJson(json.decode(str));

String newsModelToJson(NewsModel data) => json.encode(data.toJson());

class NewsModel {
  final String? status;
  final String? copyright;
  final int? numResults;
  final List<NewsResult>? results;

  NewsModel({
    this.status,
    this.copyright,
    this.numResults,
    this.results,
  });

  NewsModel copyWith({
    String? status,
    String? copyright,
    int? numResults,
    List<NewsResult>? results,
  }) =>
      NewsModel(
        status: status ?? this.status,
        copyright: copyright ?? this.copyright,
        numResults: numResults ?? this.numResults,
        results: results ?? this.results,
      );

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        status: json["status"],
        copyright: json["copyright"],
        numResults: json["num_results"],
        results: json["results"] == null
            ? []
            : List<NewsResult>.from(
                json["results"]!.map((x) => NewsResult.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "copyright": copyright,
        "num_results": numResults,
        "results": results == null
            ? []
            : List<dynamic>.from(results!.map((x) => x.toJson())),
      };
}

class NewsResult {
  final String? uri;
  final String? url;
  final int? id;
  final int? assetId;
  final String? source;
  final DateTime? publishedDate;
  final DateTime? updated;
  final String? section;
  final String? subsection;
  final String? nytdsection;
  final String? adxKeywords;
  final dynamic column;
  final String? byline;
  final String? type;
  final String? title;
  final String? resultAbstract;
  final List<String>? desFacet;
  final List<String>? orgFacet;
  final List<String>? perFacet;
  final List<String>? geoFacet;
  final List<Media>? media;
  final int? etaId;

  NewsResult({
    this.uri,
    this.url,
    this.id,
    this.assetId,
    this.source,
    this.publishedDate,
    this.updated,
    this.section,
    this.subsection,
    this.nytdsection,
    this.adxKeywords,
    this.column,
    this.byline,
    this.type,
    this.title,
    this.resultAbstract,
    this.desFacet,
    this.orgFacet,
    this.perFacet,
    this.geoFacet,
    this.media,
    this.etaId,
  });

  NewsResult copyWith({
    String? uri,
    String? url,
    int? id,
    int? assetId,
    String? source,
    DateTime? publishedDate,
    DateTime? updated,
    String? section,
    String? subsection,
    String? nytdsection,
    String? adxKeywords,
    dynamic column,
    String? byline,
    String? type,
    String? title,
    String? resultAbstract,
    List<String>? desFacet,
    List<String>? orgFacet,
    List<String>? perFacet,
    List<String>? geoFacet,
    List<Media>? media,
    int? etaId,
  }) =>
      NewsResult(
        uri: uri ?? this.uri,
        url: url ?? this.url,
        id: id ?? this.id,
        assetId: assetId ?? this.assetId,
        source: source ?? this.source,
        publishedDate: publishedDate ?? this.publishedDate,
        updated: updated ?? this.updated,
        section: section ?? this.section,
        subsection: subsection ?? this.subsection,
        nytdsection: nytdsection ?? this.nytdsection,
        adxKeywords: adxKeywords ?? this.adxKeywords,
        column: column ?? this.column,
        byline: byline ?? this.byline,
        type: type ?? this.type,
        title: title ?? this.title,
        resultAbstract: resultAbstract ?? this.resultAbstract,
        desFacet: desFacet ?? this.desFacet,
        orgFacet: orgFacet ?? this.orgFacet,
        perFacet: perFacet ?? this.perFacet,
        geoFacet: geoFacet ?? this.geoFacet,
        media: media ?? this.media,
        etaId: etaId ?? this.etaId,
      );

  factory NewsResult.fromJson(Map<String, dynamic> json) => NewsResult(
        uri: json["uri"],
        url: json["url"],
        id: json["id"],
        assetId: json["asset_id"],
        source: json["source"],
        publishedDate: json["published_date"] == null
            ? null
            : DateTime.parse(json["published_date"]),
        updated:
            json["updated"] == null ? null : DateTime.parse(json["updated"]),
        section: json["section"],
        subsection: json["subsection"],
        nytdsection: json["nytdsection"],
        adxKeywords: json["adx_keywords"],
        column: json["column"],
        byline: json["byline"],
        type: json["type"],
        title: json["title"],
        resultAbstract: json["abstract"],
        desFacet: json["des_facet"] == null
            ? []
            : List<String>.from(json["des_facet"]!.map((x) => x)),
        orgFacet: json["org_facet"] == null
            ? []
            : List<String>.from(json["org_facet"]!.map((x) => x)),
        perFacet: json["per_facet"] == null
            ? []
            : List<String>.from(json["per_facet"]!.map((x) => x)),
        geoFacet: json["geo_facet"] == null
            ? []
            : List<String>.from(json["geo_facet"]!.map((x) => x)),
        media: json["media"] == null
            ? []
            : List<Media>.from(json["media"]!.map((x) => Media.fromJson(x))),
        etaId: json["eta_id"],
      );

  Map<String, dynamic> toJson() => {
        "uri": uri,
        "url": url,
        "id": id,
        "asset_id": assetId,
        "source": source,
        "published_date":
            "${publishedDate!.year.toString().padLeft(4, '0')}-${publishedDate!.month.toString().padLeft(2, '0')}-${publishedDate!.day.toString().padLeft(2, '0')}",
        "updated": updated?.toIso8601String(),
        "section": section,
        "subsection": subsection,
        "nytdsection": nytdsection,
        "adx_keywords": adxKeywords,
        "column": column,
        "byline": byline,
        "type": type,
        "title": title,
        "abstract": resultAbstract,
        "des_facet":
            desFacet == null ? [] : List<dynamic>.from(desFacet!.map((x) => x)),
        "org_facet":
            orgFacet == null ? [] : List<dynamic>.from(orgFacet!.map((x) => x)),
        "per_facet":
            perFacet == null ? [] : List<dynamic>.from(perFacet!.map((x) => x)),
        "geo_facet":
            geoFacet == null ? [] : List<dynamic>.from(geoFacet!.map((x) => x)),
        "media": media == null
            ? []
            : List<dynamic>.from(media!.map((x) => x.toJson())),
        "eta_id": etaId,
      };
}

class Media {
  final String? type;
  final String? subtype;
  final String? caption;
  final String? copyright;
  final int? approvedForSyndication;
  final List<MediaMetadatum>? mediaMetadata;

  Media({
    this.type,
    this.subtype,
    this.caption,
    this.copyright,
    this.approvedForSyndication,
    this.mediaMetadata,
  });

  Media copyWith({
    String? type,
    String? subtype,
    String? caption,
    String? copyright,
    int? approvedForSyndication,
    List<MediaMetadatum>? mediaMetadata,
  }) =>
      Media(
        type: type ?? this.type,
        subtype: subtype ?? this.subtype,
        caption: caption ?? this.caption,
        copyright: copyright ?? this.copyright,
        approvedForSyndication:
            approvedForSyndication ?? this.approvedForSyndication,
        mediaMetadata: mediaMetadata ?? this.mediaMetadata,
      );

  factory Media.fromJson(Map<String, dynamic> json) => Media(
        type: json["type"],
        subtype: json["subtype"],
        caption: json["caption"],
        copyright: json["copyright"],
        approvedForSyndication: json["approved_for_syndication"],
        mediaMetadata: json["media-metadata"] == null
            ? []
            : List<MediaMetadatum>.from(
                json["media-metadata"]!.map((x) => MediaMetadatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "subtype": subtype,
        "caption": caption,
        "copyright": copyright,
        "approved_for_syndication": approvedForSyndication,
        "media-metadata": mediaMetadata == null
            ? []
            : List<dynamic>.from(mediaMetadata!.map((x) => x.toJson())),
      };
}

class MediaMetadatum {
  final String? url;
  final String? format;
  final int? height;
  final int? width;

  MediaMetadatum({
    this.url,
    this.format,
    this.height,
    this.width,
  });

  MediaMetadatum copyWith({
    String? url,
    String? format,
    int? height,
    int? width,
  }) =>
      MediaMetadatum(
        url: url ?? this.url,
        format: format ?? this.format,
        height: height ?? this.height,
        width: width ?? this.width,
      );

  factory MediaMetadatum.fromJson(Map<String, dynamic> json) => MediaMetadatum(
        url: json["url"],
        format: json["format"],
        height: json["height"],
        width: json["width"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "format": format,
        "height": height,
        "width": width,
      };
}
