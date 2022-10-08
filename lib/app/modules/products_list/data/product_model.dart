class Product {
  Product({
    this.id,
    this.type,
    this.sku,
    this.name,
    this.brief,
    this.description,
    this.price,
    this.salePrice,
    this.news,
    this.status,
    this.canRedeemPoints,
    this.canEarnPoints,
    this.sortorder,
    this.quantity,
    this.discount,
    this.expiryDate,
    this.isCustomizable,
    this.sizeGuide,
    this.listPrice,
    this.features,
    this.specifications,
    this.relatedProducts,
    this.downloads,
    this.whyAndWhen,
    this.pdf,
    this.promoteToFront,
    this.promoteToMobileCategories,
    this.hidePrice,
    this.setAsNoStock,
    this.setAsSoldOut,
    this.goToSupport,
    this.visits,
    this.refid,
    this.brandId,
    this.typeId,
    this.productId,
    this.variationId,
    this.kcal,
    this.note,
    this.tagLine,
    this.noteTitle,
    this.image,
    this.variations,
    this.options,
    this.categories,
    this.tags,
    this.attributes,
    this.sheets,
    this.seo,
    this.customernote,
    this.withnote,
    this.bookedQty,
    this.isGift,
    this.brand,
    this.slug,
    this.collection,
    this.category,
    this.tag,
    this.sale,
    this.images,
    this.tabs,
    this.selectedVariant,
  });

  late final int? id;
  late final String? type;
  late final String? sku;
  late final String? name;
  late final String? brief;
  late final String? description;
  late final String? price;
  late final String? salePrice;
  late final bool? news;
  late final int? status;
  late final int? canRedeemPoints;
  late final int? canEarnPoints;
  late final int? sortorder;
  late final int? quantity;
  late final int? discount;
  late final String? expiryDate;
  late final int? isCustomizable;
  late final String? sizeGuide;
  late final String? listPrice;
  late final bool? features;
  late final String? specifications;
  late final List<Product>? relatedProducts;
  late final bool? downloads;
  late final String? whyAndWhen;
  late final String? pdf;
  late final int? promoteToFront;
  late final int? promoteToMobileCategories;
  late final int? hidePrice;
  late final int? setAsNoStock;
  late final int? setAsSoldOut;
  late final int? goToSupport;
  late final int? visits;
  late final int? refid;
  late final String? brandId;
  late final String? typeId;
  late final String? productId;
  late final String? variationId;
  late final String? kcal;
  late final String? note;
  late final String? tagLine;
  late final String? noteTitle;
  late final String? image;
  late final List<Variations>? variations;
  late final List<Options>? options;
  late final List<int>? categories;
  late final List<int>? tags;
  late final List<Attributes>? attributes;
  late final List<dynamic>? sheets;
  late final String? seo;
  late final String? customernote;
  late final int? withnote;
  late final int? bookedQty;
  late final int? isGift;
  late final String? brand;
  late final String? slug;
  late final List<dynamic>? collection;
  late final int? category;
  late final int? tag;
  late final bool? sale;
  late final List<dynamic>? images;
  late final List<dynamic>? tabs;
  late final int? selectedVariant;

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    sku = json['sku'];
    name = json['name'];
    brief = json['brief'];
    description = json['description'];
    price = json['price'];
    salePrice = json['sale_price'];
    news = json['new'];
    status = json['status'];
    canRedeemPoints = json['can_redeem_points'];
    canEarnPoints = json['can_earn_points'];
    sortorder = json['sortorder'];
    quantity = json['quantity'];
    discount = json['discount'];
    expiryDate = json['expiry_date'];
    isCustomizable = json['is_customizable'];
    sizeGuide = json['size_guide'];
    listPrice = json['list_price'];
    features = json['features'];
    specifications = json['specifications'];
    relatedProducts = json['related_products'];
    downloads = json['downloads'];
    whyAndWhen = json['why_and_when'];
    pdf = json['pdf'];
    promoteToFront = json['promote_to_front'];
    promoteToMobileCategories = json['promote_to_mobile_categories'];
    hidePrice = json['hide_price'];
    setAsNoStock = json['set_as_no_stock'];
    setAsSoldOut = json['set_as_sold_out'];
    goToSupport = json['go_to_support'];
    visits = json['visits'];
    refid = json['refid'];
    brandId = json['brand_id'];
    typeId = json['type_id'];
    productId = json['product_id'];
    variationId = json['variation_id'];
    kcal = json['kcal'];
    note = json['note'];
    tagLine = json['tag_line'];
    noteTitle = json['note_title'];
    image = json['image'];
    variations = List.from(json['variations'])
        .map((e) => Variations.fromJson(e))
        .toList();
    options =
        List.from(json['options']).map((e) => Options.fromJson(e)).toList();
    categories = List.castFrom<dynamic, int>(json['categories']);
    tags = List.castFrom<dynamic, int>(json['tags']);
    attributes = List.from(json['attributes'])
        .map((e) => Attributes.fromJson(e))
        .toList();
    sheets = List.castFrom<dynamic, dynamic>(json['sheets']);
    seo = json['seo'];
    customernote = json['customernote'];
    withnote = json['withnote'];
    bookedQty = json['booked_qty'];
    isGift = json['is_gift'];
    brand = json['brand'];
    slug = json['slug'];
    collection = List.castFrom<dynamic, dynamic>(json['collection']);
    category = json['category'];
    tag = json['tag'];
    sale = json['sale'];
    images = List.castFrom<dynamic, dynamic>(json['images']);
    tabs = List.castFrom<dynamic, dynamic>(json['tabs']);
    selectedVariant = json['selectedVariant'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['type'] = type;
    data['sku'] = sku;
    data['name'] = name;
    data['brief'] = brief;
    data['description'] = description;
    data['price'] = price;
    data['sale_price'] = salePrice;
    data['new'] = news;
    data['status'] = status;
    data['can_redeem_points'] = canRedeemPoints;
    data['can_earn_points'] = canEarnPoints;
    data['sortorder'] = sortorder;
    data['quantity'] = quantity;
    data['discount'] = discount;
    data['expiry_date'] = expiryDate;
    data['is_customizable'] = isCustomizable;
    data['size_guide'] = sizeGuide;
    data['list_price'] = listPrice;
    data['features'] = features;
    data['specifications'] = specifications;
    data['related_products'] = relatedProducts;
    data['downloads'] = downloads;
    data['why_and_when'] = whyAndWhen;
    data['pdf'] = pdf;
    data['promote_to_front'] = promoteToFront;
    data['promote_to_mobile_categories'] = promoteToMobileCategories;
    data['hide_price'] = hidePrice;
    data['set_as_no_stock'] = setAsNoStock;
    data['set_as_sold_out'] = setAsSoldOut;
    data['go_to_support'] = goToSupport;
    data['visits'] = visits;
    data['refid'] = refid;
    data['brand_id'] = brandId;
    data['type_id'] = typeId;
    data['product_id'] = productId;
    data['variation_id'] = variationId;
    data['kcal'] = kcal;
    data['note'] = note;
    data['tag_line'] = tagLine;
    data['note_title'] = noteTitle;
    data['image'] = image;
    data['variations'] = variations!.map((e) => e.toJson()).toList();
    data['options'] = options!.map((e) => e.toJson()).toList();
    data['categories'] = categories;
    data['tags'] = tags;
    data['attributes'] = attributes!.map((e) => e.toJson()).toList();
    data['sheets'] = sheets;
    data['seo'] = seo;
    data['customernote'] = customernote;
    data['withnote'] = withnote;
    data['booked_qty'] = bookedQty;
    data['is_gift'] = isGift;
    data['brand'] = brand;
    data['slug'] = slug;
    data['collection'] = collection;
    data['category'] = category;
    data['tag'] = tag;
    data['sale'] = sale;
    data['images'] = images;
    data['tabs'] = tabs;
    data['selectedVariant'] = selectedVariant;
    return data;
  }
}

class Variations {
  Variations({
    this.variantId,
    this.id,
    this.sku,
    this.name,
    this.stock,
    this.discount,
    this.expiryDate,
    this.listPrice,
    this.price,
    this.options,
  });

  late final int? variantId;
  late final int? id;
  late final String? sku;
  late final String? name;
  late final int? stock;
  late final int? discount;
  late final String? expiryDate;
  late final String? listPrice;
  late final String? price;
  late final List<Options>? options;

  Variations.fromJson(Map<String, dynamic> json) {
    variantId = json['variant_id'];
    id = json['id'];
    sku = json['sku'];
    name = json['name'];
    stock = json['stock'];
    discount = json['discount'];
    expiryDate = json['expiry_date'];
    listPrice = json['list_price'];
    price = json['price'];
    options =
        List.from(json['options']).map((e) => Options.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['variant_id'] = variantId;
    data['id'] = id;
    data['sku'] = sku;
    data['name'] = name;
    data['stock'] = stock;
    data['discount'] = discount;
    data['expiry_date'] = expiryDate;
    data['list_price'] = listPrice;
    data['price'] = price;
    data['options'] = options!.map((e) => e.toJson()).toList();
    return data;
  }
}

class Options {
  Options({
    this.productId,
    this.variationId,
    this.attributeId,
    this.optionId,
  });

  late final int? productId;
  late final int? variationId;
  late final int? attributeId;
  late final int? optionId;

  Options.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    variationId = json['variation_id'];
    attributeId = json['attribute_id'];
    optionId = json['option_id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['product_id'] = productId;
    data['variation_id'] = variationId;
    data['attribute_id'] = attributeId;
    data['option_id'] = optionId;
    return data;
  }
}

class Attributes {
  Attributes({
    this.productId,
    this.variationId,
    this.attributeId,
    this.optionId,
  });

  late final int? productId;
  late final int? variationId;
  late final int? attributeId;
  late final int? optionId;

  Attributes.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    variationId = json['variation_id'];
    attributeId = json['attribute_id'];
    optionId = json['option_id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['product_id'] = productId;
    data['variation_id'] = variationId;
    data['attribute_id'] = attributeId;
    data['option_id'] = optionId;
    return data;
  }
}
