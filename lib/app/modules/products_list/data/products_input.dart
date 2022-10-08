class ProductsInput {
  ProductsInput({
    this.designer,
    this.brand,
    this.option,
    this.tag,
    this.gender,
    this.keyword,
    this.orderBy,
    this.sortBy,
    this.priceFrom,
    this.priceTo,
    this.s,
    this.limit,
    this.category,
    this.featured,
    this.hasSheets,
    this.page,
  });
  late final String? designer;
  late final String? brand;
  late final List<String>? option;
  late final List<String>? tag;
  late final List<String>? gender;
  late final String? keyword;
  late final String? orderBy;
  late final String? sortBy;
  late final String? priceFrom;
  late final String? priceTo;
  late final String? s;
  late final String? limit;
  late final List<String>? category;
  late final String? featured;
  late final String? hasSheets;
  late final String? page;

  ProductsInput.fromJson(Map<String, dynamic> json) {
    designer = json['designer'];
    brand = json['brand'];
    option = List.castFrom<dynamic, String>(json['option']);
    tag = List.castFrom<dynamic, String>(json['tag']);
    gender = List.castFrom<dynamic, String>(json['gender']);
    keyword = json['keyword'];
    orderBy = json['orderBy'];
    sortBy = json['sortBy'];
    priceFrom = json['price_from'];
    priceTo = json['price_to'];
    s = json['s'];
    limit = json['limit'];
    category = List.castFrom<dynamic, String>(json['category']);
    featured = json['featured'];
    hasSheets = json['has_sheets'];
    page = json['page'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['designer'] = designer;
    data['brand'] = brand;
    data['option'] = option;
    data['tag'] = tag;
    data['gender'] = gender;
    data['keyword'] = keyword;
    data['orderBy'] = orderBy;
    data['sortBy'] = sortBy;
    data['price_from'] = priceFrom;
    data['price_to'] = priceTo;
    data['s'] = s;
    data['limit'] = limit;
    data['category'] = category;
    data['featured'] = featured;
    data['has_sheets'] = hasSheets;
    data['page'] = page;
    return data;
  }
}
