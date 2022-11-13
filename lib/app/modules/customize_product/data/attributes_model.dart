class AttributeResponseModel {
  bool? result;
  String? message;
  List<Data>? data;
  CombinationsCategories? combinationsCategories;
  int? code;

  AttributeResponseModel(
      {this.result,
      this.message,
      this.data,
      this.combinationsCategories,
      this.code});

  AttributeResponseModel.fromJson(Map<String, dynamic> json) {
    result = json['result'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    combinationsCategories = json['combinations_categories'] != null
        ? CombinationsCategories.fromJson(json['combinations_categories'])
        : null;
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['result'] = result;
    data['message'] = message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (combinationsCategories != null) {
      data['combinations_categories'] = combinationsCategories!.toJson();
    }
    data['code'] = code;
    return data;
  }
}

class Data {
  int? id;
  int? attributeId;
  String? displayType;
  String? section;
  String? color;
  int? price;
  int? status;
  int? sortorder;
  String? createdAt;
  String? updatedAt;
  String? name;
  String? label;

  Data(
      {this.id,
      this.attributeId,
      this.displayType,
      this.section,
      this.color,
      this.price,
      this.status,
      this.sortorder,
      this.createdAt,
      this.updatedAt,
      this.name,
      this.label});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attributeId = json['attribute_id'];
    displayType = json['display_type'];
    section = json['section'];
    color = json['color'];
    price = json['price'];
    status = json['status'];
    sortorder = json['sortorder'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    name = json['name'];
    label = json['label'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['attribute_id'] = attributeId;
    data['display_type'] = displayType;
    data['section'] = section;
    data['color'] = color;
    data['price'] = price;
    data['status'] = status;
    data['sortorder'] = sortorder;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['name'] = name;
    data['label'] = label;
    return data;
  }
}

class CombinationsCategories {
  Eshop? eshop;
  Eshop? customize;
  Eshop? thobMeasurements;
  Eshop? bodyMeasurements;

  CombinationsCategories(
      {this.eshop,
      this.customize,
      this.thobMeasurements,
      this.bodyMeasurements});

  CombinationsCategories.fromJson(Map<String, dynamic> json) {
    eshop = json['eshop'] != null ? Eshop.fromJson(json['eshop']) : null;
    customize =
        json['customize'] != null ? Eshop.fromJson(json['customize']) : null;
    thobMeasurements = json['thob_measurements'] != null
        ? Eshop.fromJson(json['thob_measurements'])
        : null;
    bodyMeasurements = json['body_measurements'] != null
        ? Eshop.fromJson(json['body_measurements'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (eshop != null) {
      data['eshop'] = eshop!.toJson();
    }
    if (customize != null) {
      data['customize'] = customize!.toJson();
    }
    if (thobMeasurements != null) {
      data['thob_measurements'] = thobMeasurements!.toJson();
    }
    if (bodyMeasurements != null) {
      data['body_measurements'] = bodyMeasurements!.toJson();
    }
    return data;
  }
}

class Eshop {
  String? name;
  bool? isVisible;

  Eshop({this.name, this.isVisible});

  Eshop.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    isVisible = json['isVisible'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['isVisible'] = isVisible;
    return data;
  }
}
