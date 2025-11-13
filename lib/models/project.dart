class Project {
  final bool success;
  final String message;
  final List<Data> dataList;
  final Pagination? pagination;
  Project({required this.success, required this.message, required this.dataList,required this.pagination});
  factory Project.fromJson(Map<String, dynamic> json) {
    List<Data> dataList = [];
    if (json['data'] is List) {
      for (var i in json['data'] as List) {
        dataList.add(Data.fromJson(i));
      }
    }
    return Project(
      success: json['success'],
      message: json['message'],
      dataList: dataList,
      pagination: Pagination.fromJson(json['pagination'])
    );
  }
}

class Data {
  final int id;
  final String title;
  final String slug;
  final String description;
  final String image;
  final bool isPromoted;
  final BasicPrice basicPrice;
  final int basicDeliveryDays;
  final Statistics statistics;
  final Freelancer freelancer;
  final Category category;
  Data({
    required this.id,
    required this.title,
    required this.slug,
    required this.description,
    required this.image,
    required this.isPromoted,
    required this.basicPrice,
    required this.basicDeliveryDays,
    required this.statistics,
    required this.freelancer,
    required this.category,
  });
  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      id: json['id'],
      title: json['title'],
      slug: json['slug'],
      description: json['description'],
      image: json['image'],
      isPromoted: json['is_promoted'],
      basicPrice: BasicPrice.fromJson(json['basic_price']),
      basicDeliveryDays: json['basic_delivery_days'],
      statistics: Statistics.fromJson(json['statistics']),
      freelancer: Freelancer.fromJson(json['freelancer']),
      category: Category.fromJson(json['category']),
    );
  }
}

class Category {
  final int id;
  final String name;
  final String slug;
  Category({required this.id, required this.name, required this.slug});
  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
      slug: json['slug'],
    );
  }
}

class Freelancer {
  final int id;
  final String name;
  final String username;
  final String image;
  final String experienceLevel;
  final String? country;
  final String freelancerLevel;
  final String levelImage;
  Freelancer({
    required this.id,
    required this.name,
    required this.username,
    required this.image,
    required this.experienceLevel,
    required this.country,
    required this.freelancerLevel,
    required this.levelImage,
  });
  factory Freelancer.fromJson(Map<String, dynamic> json) {
    return Freelancer(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      image: json['image'],
      experienceLevel: json['experience_level'],
      country: json['country'],
      freelancerLevel: json['freelancer_level'],
      levelImage: json['level_image'],
    );
  }
}

class Statistics {
  final int totalOrders;
  final int totalReviews;
  final double? averageRating;
  Statistics({
    required this.totalOrders,
    required this.totalReviews,
    required this.averageRating,
  });
  factory Statistics.fromJson(Map<String, dynamic> json) {
    return Statistics(
      totalOrders: json['total_orders'],
      totalReviews: json['total_reviews'],
      averageRating: json['average_rating'] != null
          ? (json['average_rating'] as num?)?.toDouble()
          : null,
    );
  }
}
class Pagination {
  final int currentPage;
  final int lastPage;
  final int perPage;
  final int total;
  final int from;
  final int to;
  final PaginationLinks links;

  Pagination({
    required this.currentPage,
    required this.lastPage,
    required this.perPage,
    required this.total,
    required this.from,
    required this.to,
    required this.links,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) {
    return Pagination(
      currentPage: json['current_page'],
      lastPage: json['last_page'],
      perPage: json['per_page'],
      total: json['total'],
      from: json['from'],
      to: json['to'],
      links: PaginationLinks.fromJson(json['links']),
    );
  }
}
class PaginationLinks {
  final String first;
  final String last;
  final String? prev;
  final String? next;

  PaginationLinks({
    required this.first,
    required this.last,
    required this.prev,
    required this.next,
  });

  factory PaginationLinks.fromJson(Map<String, dynamic> json) {
    return PaginationLinks(
      first: json['first'],
      last: json['last'],
      prev: json['prev'],
      next: json['next'],
    );
  }
}
class BasicPrice {
  final num regular;
  final num? discount;
  final num finalPrice;
  BasicPrice({
    required this.regular,
    required this.discount,
    required this.finalPrice,
  });
  factory BasicPrice.fromJson(Map<String, dynamic> json) {
    return BasicPrice(
      regular: json['regular'],
      discount: json['discount'],
      finalPrice: json['final'],
    );
  }
}