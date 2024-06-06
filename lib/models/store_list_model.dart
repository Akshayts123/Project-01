// To parse this JSON data, do
//
//     final storeList = storeListFromJson(jsonString);

import 'dart:convert';

StoreList storeListFromJson(String str) => StoreList.fromJson(json.decode(str));

String storeListToJson(StoreList data) => json.encode(data.toJson());

class StoreList {
  int status;
  String message;
  Data data;

  StoreList({
    required this.status,
    required this.message,
    required this.data,
  });

  factory StoreList.fromJson(Map<String, dynamic> json) => StoreList(
    status: json["status"],
    message: json["message"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": data.toJson(),
  };
}

class Data {
  int currentPage;
  List<Datum> data;
  String firstPageUrl;
  int from;
  int lastPage;
  String lastPageUrl;
  List<Link> links;
  dynamic nextPageUrl;
  String path;
  int perPage;
  dynamic prevPageUrl;
  int to;
  int total;

  Data({
    required this.currentPage,
    required this.data,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    required this.links,
    required this.nextPageUrl,
    required this.path,
    required this.perPage,
    required this.prevPageUrl,
    required this.to,
    required this.total,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    currentPage: json["current_page"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    firstPageUrl: json["first_page_url"],
    from: json["from"],
    lastPage: json["last_page"],
    lastPageUrl: json["last_page_url"],
    links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
    nextPageUrl: json["next_page_url"],
    path: json["path"],
    perPage: json["per_page"],
    prevPageUrl: json["prev_page_url"],
    to: json["to"],
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "current_page": currentPage,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "first_page_url": firstPageUrl,
    "from": from,
    "last_page": lastPage,
    "last_page_url": lastPageUrl,
    "links": List<dynamic>.from(links.map((x) => x.toJson())),
    "next_page_url": nextPageUrl,
    "path": path,
    "per_page": perPage,
    "prev_page_url": prevPageUrl,
    "to": to,
    "total": total,
  };
}

class Datum {
  int id;
  String name;
  String email;
  String? catId;
  String? subcatId;
  String? tags;
  String? location;
  String? longitude;
  String? latitude;
  String? storeId;
  String? mobile;
  String? address;
  String? workingHours;
  String? yearsofEstablishment;
  String? about;
  String? shopBanner;
  String? shopLogo;
  String themeId;
  String slug;
  String enablePwaStore;
  String? content;
  String? itemVariable;
  String defaultLanguage;
  int createdBy;
  int isActive;
  DateTime? createdAt;
  DateTime? updatedAt;

  Datum({
    required this.id,
    required this.name,
    required this.email,
    required this.catId,
    required this.subcatId,
    required this.tags,
    required this.location,
    required this.longitude,
    required this.latitude,
    required this.storeId,
    required this.mobile,
    required this.address,
    required this.workingHours,
    required this.yearsofEstablishment,
    required this.about,
    required this.shopBanner,
    required this.shopLogo,
    required this.themeId,
    required this.slug,
    required this.enablePwaStore,
    required this.content,
    required this.itemVariable,
    required this.defaultLanguage,
    required this.createdBy,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    name: json["name"],
    email: json["email"],
    catId: json["cat_id"],
    subcatId: json["subcat_id"],
    tags: json["tags"],
    location: json["location"],
    longitude: json["longitude"],
    latitude: json["latitude"],
    storeId: json["store_id"],
    mobile: json["mobile"],
    address: json["address"],
    workingHours: json["working_hours"],
    yearsofEstablishment: json["yearsof_establishment"],
    about: json["about"],
    shopBanner: json["shop_banner"],
    shopLogo: json["shop_logo"],
    themeId: json["theme_id"],
    slug: json["slug"],
    enablePwaStore: json["enable_pwa_store"],
    content: json["content"],
    itemVariable: json["item_variable"],
    defaultLanguage: json["default_language"],
    createdBy: json["created_by"],
    isActive: json["is_active"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "email": email,
    "cat_id": catId,
    "subcat_id": subcatId,
    "tags": tags,
    "location": location,
    "longitude": longitude,
    "latitude": latitude,
    "store_id": storeId,
    "mobile": mobile,
    "address": address,
    "working_hours": workingHours,
    "yearsof_establishment": yearsofEstablishment,
    "about": about,
    "shop_banner": shopBanner,
    "shop_logo": shopLogo,
    "theme_id": themeId,
    "slug": slug,
    "enable_pwa_store": enablePwaStore,
    "content": content,
    "item_variable": itemVariable,
    "default_language": defaultLanguage,
    "created_by": createdBy,
    "is_active": isActive,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
  };
}

class Link {
  String? url;
  String label;
  bool active;

  Link({
    required this.url,
    required this.label,
    required this.active,
  });

  factory Link.fromJson(Map<String, dynamic> json) => Link(
    url: json["url"],
    label: json["label"],
    active: json["active"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "label": label,
    "active": active,
  };
}
