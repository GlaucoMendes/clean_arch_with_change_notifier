class PropertiesModel {
  Id? iId;
  String? propertyType;
  String? address;
  String? number;
  String? unit;
  String? building;
  String? region;
  String? city;
  String? state;
  String? zipcode;
  double? lat;
  double? lng;
  int? bedrooms;
  int? suites;
  int? bathrooms;
  int? parkingSpots;
  double? area;
  int? totalArea;
  int? condoFee;
  int? tax;
  int? askingPrice;
  int? rentPrice;
  List<People>? people;
  String? frontdeskHours;
  int? floor;
  String? developmentStage;
  List<String>? features;
  String? companyId;
  String? createdAt;
  List<Images>? images;
  String? updatedAt;
  Ad? ad;
  String? commercialId;
  bool? isExclusive;
  String? notes;

  PropertiesModel({
    iId,
    propertyType,
    address,
    number,
    unit,
    building,
    region,
    city,
    state,
    zipcode,
    lat,
    lng,
    bedrooms,
    suites,
    bathrooms,
    parkingSpots,
    area,
    totalArea,
    condoFee,
    tax,
    askingPrice,
    rentPrice,
    people,
    frontdeskHours,
    floor,
    developmentStage,
    features,
    companyId,
    createdAt,
    images,
    updatedAt,
    ad,
    commercialId,
    isExclusive,
    notes,
  });

  PropertiesModel.fromJson(Map<String, dynamic> json) {
    iId = json['_id'] != null ? Id.fromJson(json['_id']) : null;
    propertyType = json['property_type'];
    address = json['address'];
    number = json['number'];
    unit = json['unit'];
    building = json['building'];
    region = json['region'];
    city = json['city'];
    state = json['state'];
    zipcode = json['zipcode'];
    lat = json['lat'];
    lng = json['lng'];
    bedrooms = json['bedrooms'];
    suites = json['suites'];
    bathrooms = json['bathrooms'];
    parkingSpots = json['parking_spots'];
    area = json['area']?.toDouble();
    totalArea = json['total_area'];
    condoFee = json['condo_fee'];
    tax = json['tax'];
    askingPrice = json['asking_price'];
    rentPrice = json['rent_price'];
    if (json['people'] != null) {
      people = <People>[];
      json['people'].forEach((v) {
        people!.add(People.fromJson(v));
      });
    }
    frontdeskHours = json['frontdesk_hours'];
    floor = json['floor'];
    developmentStage = json['development_stage'];
    features = json['features'].cast<String>();
    companyId = json['company_id'];
    createdAt = json['created_at'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(Images.fromJson(v));
      });
    }
    updatedAt = json['updated_at'];
    ad = json['ad'] != null ? Ad.fromJson(json['ad']) : null;
    commercialId = json['commercial_id'];
    isExclusive = json['is_exclusive'];
    notes = json['notes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (iId != null) {
      data['_id'] = iId!.toJson();
    }
    data['property_type'] = propertyType;
    data['address'] = address;
    data['number'] = number;
    data['unit'] = unit;
    data['building'] = building;
    data['region'] = region;
    data['city'] = city;
    data['state'] = state;
    data['zipcode'] = zipcode;
    data['lat'] = lat;
    data['lng'] = lng;
    data['bedrooms'] = bedrooms;
    data['suites'] = suites;
    data['bathrooms'] = bathrooms;
    data['parking_spots'] = parkingSpots;
    data['area'] = area;
    data['total_area'] = totalArea;
    data['condo_fee'] = condoFee;
    data['tax'] = tax;
    data['asking_price'] = askingPrice;
    data['rent_price'] = rentPrice;
    if (people != null) {
      data['people'] = people!.map((v) => v.toJson()).toList();
    }
    data['frontdesk_hours'] = frontdeskHours;
    data['floor'] = floor;
    data['development_stage'] = developmentStage;
    data['features'] = features;
    data['company_id'] = companyId;
    data['created_at'] = createdAt;
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    data['updated_at'] = updatedAt;
    if (ad != null) {
      data['ad'] = ad!.toJson();
    }
    data['commercial_id'] = commercialId;
    data['is_exclusive'] = isExclusive;
    data['notes'] = notes;
    return data;
  }
}

class Id {
  String? oid;

  Id({oid});

  Id.fromJson(Map<String, dynamic> json) {
    oid = json['$oid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['$oid'] = oid;
    return data;
  }
}

class People {
  String? name;
  String? email;
  String? phone;
  double? commission;
  String? role;

  People({name, email, phone, commission, role});

  People.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    commission = json['commission']?.toDouble();
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['email'] = email;
    data['phone'] = phone;
    data['commission'] = commission;
    data['role'] = role;
    return data;
  }
}

class Images {
  String? url;
  String? id;
  String? watermarkUrl;

  Images({url, id, watermarkUrl});

  Images.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    id = json['id'];
    watermarkUrl = json['watermark_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['id'] = id;
    data['watermark_url'] = watermarkUrl;
    return data;
  }
}

class Ad {
  String? title;
  String? description;
  String? displayAddress;
  String? transactionType;

  Ad({title, description, displayAddress, transactionType});

  Ad.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    displayAddress = json['display_address'];
    transactionType = json['transaction_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['description'] = description;
    data['display_address'] = displayAddress;
    data['transaction_type'] = transactionType;
    return data;
  }
}
