// To parse this JSON data, do
//
//     final responseGetData = responseGetDataFromJson(jsonString);

import 'dart:convert';

class ResponseGetData {
  Data data;

  ResponseGetData({
    required this.data,
  });

  ResponseGetData copyWith({
    Data? data,
  }) =>
      ResponseGetData(
        data: data ?? this.data,
      );

  factory ResponseGetData.fromRawJson(String str) =>
      ResponseGetData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ResponseGetData.fromJson(Map<String, dynamic> json) =>
      ResponseGetData(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  int id;
  String name;
  String number;
  int minimalOrder;
  bool isBestseller;
  String gender;
  int brandId;
  String weight;
  String price;
  String description;
  DateTime createdAt;
  List<Item> itemImage;
  Discount discount;
  int stock;
  ItemMeta itemMeta;
  List<ItemReview> itemReview;
  List<Discussion> discussion;
  List<ItemVariant> itemVariant;

  Data({
    required this.id,
    required this.name,
    required this.number,
    required this.minimalOrder,
    required this.isBestseller,
    required this.gender,
    required this.brandId,
    required this.weight,
    required this.price,
    required this.description,
    required this.createdAt,
    required this.itemImage,
    required this.discount,
    required this.stock,
    required this.itemMeta,
    required this.itemReview,
    required this.discussion,
    required this.itemVariant,
  });

  Data copyWith({
    int? id,
    String? name,
    String? number,
    int? minimalOrder,
    bool? isBestseller,
    String? gender,
    int? brandId,
    String? weight,
    String? price,
    String? description,
    DateTime? createdAt,
    List<Item>? itemImage,
    Discount? discount,
    int? stock,
    ItemMeta? itemMeta,
    List<ItemReview>? itemReview,
    List<Discussion>? discussion,
    List<ItemVariant>? itemVariant,
  }) =>
      Data(
        id: id ?? this.id,
        name: name ?? this.name,
        number: number ?? this.number,
        minimalOrder: minimalOrder ?? this.minimalOrder,
        isBestseller: isBestseller ?? this.isBestseller,
        gender: gender ?? this.gender,
        brandId: brandId ?? this.brandId,
        weight: weight ?? this.weight,
        price: price ?? this.price,
        description: description ?? this.description,
        createdAt: createdAt ?? this.createdAt,
        itemImage: itemImage ?? this.itemImage,
        discount: discount ?? this.discount,
        stock: stock ?? this.stock,
        itemMeta: itemMeta ?? this.itemMeta,
        itemReview: itemReview ?? this.itemReview,
        discussion: discussion ?? this.discussion,
        itemVariant: itemVariant ?? this.itemVariant,
      );

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        name: json["name"],
        number: json["number"],
        minimalOrder: json["minimal_order"],
        isBestseller: json["isBestseller"],
        gender: json["gender"],
        brandId: json["brandId"],
        weight: json["weight"],
        price: json["price"],
        description: json["description"],
        createdAt: DateTime.parse(json["createdAt"]),
        itemImage:
            List<Item>.from(json["itemImage"].map((x) => Item.fromJson(x))),
        discount: Discount.fromJson(json["discount"]),
        stock: json["stock"],
        itemMeta: ItemMeta.fromJson(json["itemMeta"]),
        itemReview: List<ItemReview>.from(
            json["itemReview"].map((x) => ItemReview.fromJson(x))),
        discussion: List<Discussion>.from(
            json["discussion"].map((x) => Discussion.fromJson(x))),
        itemVariant: List<ItemVariant>.from(
            json["itemVariant"].map((x) => ItemVariant.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "number": number,
        "minimal_order": minimalOrder,
        "isBestseller": isBestseller,
        "gender": gender,
        "brandId": brandId,
        "weight": weight,
        "price": price,
        "description": description,
        "createdAt": createdAt.toIso8601String(),
        "itemImage": List<dynamic>.from(itemImage.map((x) => x.toJson())),
        "discount": discount.toJson(),
        "stock": stock,
        "itemMeta": itemMeta.toJson(),
        "itemReview": List<dynamic>.from(itemReview.map((x) => x.toJson())),
        "discussion": List<dynamic>.from(discussion.map((x) => x.toJson())),
        "itemVariant": List<dynamic>.from(itemVariant.map((x) => x.toJson())),
      };
}

class Discount {
  int id;
  String nominal;
  DateTime startAt;
  DateTime endAt;
  String type;
  DateTime createdAt;

  Discount({
    required this.id,
    required this.nominal,
    required this.startAt,
    required this.endAt,
    required this.type,
    required this.createdAt,
  });

  Discount copyWith({
    int? id,
    String? nominal,
    DateTime? startAt,
    DateTime? endAt,
    String? type,
    DateTime? createdAt,
  }) =>
      Discount(
        id: id ?? this.id,
        nominal: nominal ?? this.nominal,
        startAt: startAt ?? this.startAt,
        endAt: endAt ?? this.endAt,
        type: type ?? this.type,
        createdAt: createdAt ?? this.createdAt,
      );

  factory Discount.fromRawJson(String str) =>
      Discount.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Discount.fromJson(Map<String, dynamic> json) => Discount(
        id: json["id"],
        nominal: json["nominal"],
        startAt: DateTime.parse(json["startAt"]),
        endAt: DateTime.parse(json["endAt"]),
        type: json["type"],
        createdAt: DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nominal": nominal,
        "startAt":
            "${startAt.year.toString().padLeft(4, '0')}-${startAt.month.toString().padLeft(2, '0')}-${startAt.day.toString().padLeft(2, '0')}",
        "endAt":
            "${endAt.year.toString().padLeft(4, '0')}-${endAt.month.toString().padLeft(2, '0')}-${endAt.day.toString().padLeft(2, '0')}",
        "type": type,
        "createdAt": createdAt.toIso8601String(),
      };
}

class Discussion {
  int id;
  String content;
  Customer customer;
  DateTime createdAt;

  Discussion({
    required this.id,
    required this.content,
    required this.customer,
    required this.createdAt,
  });

  Discussion copyWith({
    int? id,
    String? content,
    Customer? customer,
    DateTime? createdAt,
  }) =>
      Discussion(
        id: id ?? this.id,
        content: content ?? this.content,
        customer: customer ?? this.customer,
        createdAt: createdAt ?? this.createdAt,
      );

  factory Discussion.fromRawJson(String str) =>
      Discussion.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Discussion.fromJson(Map<String, dynamic> json) => Discussion(
        id: json["id"],
        content: json["content"],
        customer: Customer.fromJson(json["customer"]),
        createdAt: DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "content": content,
        "customer": customer.toJson(),
        "createdAt": createdAt.toIso8601String(),
      };
}

class Customer {
  int id;
  String name;
  Phone phone;
  Email email;
  Whatsapp whatsapp;
  String photo;
  AddressClass address;

  Customer({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.whatsapp,
    required this.photo,
    required this.address,
  });

  Customer copyWith({
    int? id,
    String? name,
    Phone? phone,
    Email? email,
    Whatsapp? whatsapp,
    String? photo,
    AddressClass? address,
  }) =>
      Customer(
        id: id ?? this.id,
        name: name ?? this.name,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        whatsapp: whatsapp ?? this.whatsapp,
        photo: photo ?? this.photo,
        address: address ?? this.address,
      );

  factory Customer.fromRawJson(String str) =>
      Customer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        id: json["id"],
        name: json["name"],
        phone: phoneValues.map[json["phone"]]!,
        email: emailValues.map[json["email"]]!,
        whatsapp: whatsappValues.map[json["whatsapp"]]!,
        photo: json["photo"],
        address: AddressClass.fromJson(json["address"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": customerNameValues.reverse[name],
        "phone": phoneValues.reverse[phone],
        "email": emailValues.reverse[email],
        "whatsapp": whatsappValues.reverse[whatsapp],
        "photo": photo,
        "address": address.toJson(),
      };
}

class AddressClass {
  int id;
  AddressName name;
  AddressEnum address;
  int subdistrict;
  int city;
  int province;
  String longitude;
  String latitude;
  bool isActive;
  DateTime createdAt;

  AddressClass({
    required this.id,
    required this.name,
    required this.address,
    required this.subdistrict,
    required this.city,
    required this.province,
    required this.longitude,
    required this.latitude,
    required this.isActive,
    required this.createdAt,
  });

  AddressClass copyWith({
    int? id,
    AddressName? name,
    AddressEnum? address,
    int? subdistrict,
    int? city,
    int? province,
    String? longitude,
    String? latitude,
    bool? isActive,
    DateTime? createdAt,
  }) =>
      AddressClass(
        id: id ?? this.id,
        name: name ?? this.name,
        address: address ?? this.address,
        subdistrict: subdistrict ?? this.subdistrict,
        city: city ?? this.city,
        province: province ?? this.province,
        longitude: longitude ?? this.longitude,
        latitude: latitude ?? this.latitude,
        isActive: isActive ?? this.isActive,
        createdAt: createdAt ?? this.createdAt,
      );

  factory AddressClass.fromRawJson(String str) =>
      AddressClass.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AddressClass.fromJson(Map<String, dynamic> json) => AddressClass(
        id: json["id"],
        name: addressNameValues.map[json["name"]]!,
        address: addressEnumValues.map[json["address"]]!,
        subdistrict: json["subdistrict"],
        city: json["city"],
        province: json["province"],
        longitude: json["longitude"],
        latitude: json["latitude"],
        isActive: json["is_active"],
        createdAt: DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": addressNameValues.reverse[name],
        "address": addressEnumValues.reverse[address],
        "subdistrict": subdistrict,
        "city": city,
        "province": province,
        "longitude": longitude,
        "latitude": latitude,
        "is_active": isActive,
        "created_at": createdAt.toIso8601String(),
      };
}

enum AddressEnum { THE_6890_BERGE_LAND_SUITE_219_FLATLEYSIDE_SC_88646 }

final addressEnumValues = EnumValues({
  "6890 Berge Land Suite 219\nFlatleyside, SC 88646":
      AddressEnum.THE_6890_BERGE_LAND_SUITE_219_FLATLEYSIDE_SC_88646
});

enum AddressName { HILL_GRAHAM_AND_POLLICH }

final addressNameValues = EnumValues(
    {"Hill, Graham and Pollich": AddressName.HILL_GRAHAM_AND_POLLICH});

enum Email { CARLEE_DOYLE_YAHOO_COM }

final emailValues =
    EnumValues({"carlee.doyle@yahoo.com": Email.CARLEE_DOYLE_YAHOO_COM});

enum CustomerName { MYRNA_FERRY }

final customerNameValues =
    EnumValues({"Myrna Ferry": CustomerName.MYRNA_FERRY});

enum Phone { THE_8174066307_X45551 }

final phoneValues =
    EnumValues({"817.406.6307 x45551": Phone.THE_8174066307_X45551});

enum Whatsapp { THE_5579025894_X58403 }

final whatsappValues =
    EnumValues({"557-902-5894 x58403": Whatsapp.THE_5579025894_X58403});

class Item {
  int id;
  String fileName;
  bool isDefault;

  Item({
    required this.id,
    required this.fileName,
    required this.isDefault,
  });

  Item copyWith({
    int? id,
    String? fileName,
    bool? isDefault,
  }) =>
      Item(
        id: id ?? this.id,
        fileName: fileName ?? this.fileName,
        isDefault: isDefault ?? this.isDefault,
      );

  factory Item.fromRawJson(String str) => Item.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        fileName: json["fileName"],
        isDefault: json["isDefault"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "fileName": fileName,
        "isDefault": isDefault,
      };
}

class ItemMeta {
  int id;
  int sold;
  int review;
  int discussion;
  String rating;
  int countImage;
  DateTime createdAt;

  ItemMeta({
    required this.id,
    required this.sold,
    required this.review,
    required this.discussion,
    required this.rating,
    required this.countImage,
    required this.createdAt,
  });

  ItemMeta copyWith({
    int? id,
    int? sold,
    int? review,
    int? discussion,
    String? rating,
    int? countImage,
    DateTime? createdAt,
  }) =>
      ItemMeta(
        id: id ?? this.id,
        sold: sold ?? this.sold,
        review: review ?? this.review,
        discussion: discussion ?? this.discussion,
        rating: rating ?? this.rating,
        countImage: countImage ?? this.countImage,
        createdAt: createdAt ?? this.createdAt,
      );

  factory ItemMeta.fromRawJson(String str) =>
      ItemMeta.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ItemMeta.fromJson(Map<String, dynamic> json) => ItemMeta(
        id: json["id"],
        sold: json["sold"],
        review: json["review"],
        discussion: json["discussion"],
        rating: json["rating"],
        countImage: json["countImage"],
        createdAt: DateTime.parse(json["createdAt"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "sold": sold,
        "review": review,
        "discussion": discussion,
        "rating": rating,
        "countImage": countImage,
        "createdAt": createdAt.toIso8601String(),
      };
}

class ItemReview {
  int id;
  Customer customer;
  String content;
  String image;
  String rating;
  DateTime createdAt;

  ItemReview({
    required this.id,
    required this.customer,
    required this.content,
    required this.image,
    required this.rating,
    required this.createdAt,
  });

  ItemReview copyWith({
    int? id,
    Customer? customer,
    String? content,
    String? image,
    String? rating,
    DateTime? createdAt,
  }) =>
      ItemReview(
        id: id ?? this.id,
        customer: customer ?? this.customer,
        content: content ?? this.content,
        image: image ?? this.image,
        rating: rating ?? this.rating,
        createdAt: createdAt ?? this.createdAt,
      );

  factory ItemReview.fromRawJson(String str) =>
      ItemReview.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ItemReview.fromJson(Map<String, dynamic> json) => ItemReview(
        id: json["id"],
        customer: Customer.fromJson(json["customer"]),
        content: json["content"],
        image: json["image"],
        rating: json["rating"],
        createdAt: DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "customer": customer.toJson(),
        "content": content,
        "image": image,
        "rating": rating,
        "created_at": createdAt.toIso8601String(),
      };
}

class ItemVariant {
  int id;
  String code;
  String name;
  Item itemPhoto;
  List<String> stock;

  ItemVariant({
    required this.id,
    required this.code,
    required this.name,
    required this.itemPhoto,
    required this.stock,
  });

  ItemVariant copyWith({
    int? id,
    String? code,
    String? name,
    Item? itemPhoto,
    List<String>? stock,
  }) =>
      ItemVariant(
        id: id ?? this.id,
        code: code ?? this.code,
        name: name ?? this.name,
        itemPhoto: itemPhoto ?? this.itemPhoto,
        stock: stock ?? this.stock,
      );

  factory ItemVariant.fromRawJson(String str) =>
      ItemVariant.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ItemVariant.fromJson(Map<String, dynamic> json) => ItemVariant(
        id: json["id"],
        code: json["code"],
        name: json["name"],
        itemPhoto: Item.fromJson(json["itemPhoto"]),
        stock: List<String>.from(json["stock"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "name": name,
        "itemPhoto": itemPhoto.toJson(),
        "stock": List<dynamic>.from(stock.map((x) => x)),
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
