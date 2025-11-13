class FreelancerListResponse {
  final bool? success;
  final String? message;
  final List<FreelancerData>? data;
  final Pagination? pagination;

  FreelancerListResponse({
    this.success,
    this.message,
    this.data,
    this.pagination,
  });

  factory FreelancerListResponse.fromJson(Map<String, dynamic> json) {
    return FreelancerListResponse(
      success: json['success'],
      message: json['message'],
      data: (json['data'] as List?)
          ?.map((e) => FreelancerData.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] != null
          ? Pagination.fromJson(json['pagination'])
          : null,
    );
  }
}

class FreelancerData {
  final int? id;
  final String? username;
  final String? name;
  final String? image;
  final String? title;
  final bool? isPromoted;
  final bool? isVerified;
  final bool? isOnline;
  final Location? location;
  final String? experienceLevel;
  final num? hourlyRate;
  final String? freelancerLevel;
  final String? levelImage;
  final Statistics? statistics;
  final String? memberSince;

  FreelancerData({
    this.id,
    this.username,
    this.name,
    this.image,
    this.title,
    this.isPromoted,
    this.isVerified,
    this.isOnline,
    this.location,
    this.experienceLevel,
    this.hourlyRate,
    this.freelancerLevel,
    this.levelImage,
    this.statistics,
    this.memberSince,
  });

  factory FreelancerData.fromJson(Map<String, dynamic> json) {
    return FreelancerData(
      id: json['id'],
      username: json['username'],
      name: json['name'],
      image: json['image'],
      title: json['title'],
      isPromoted: json['is_promoted'],
      isVerified: json['is_verified'],
      isOnline: json['is_online'],
      location: json['location'] != null
          ? Location.fromJson(json['location'])
          : null,
      experienceLevel: json['experience_level'],
      hourlyRate: json['hourly_rate'],
      freelancerLevel: json['freelancer_level'],
      levelImage: json['level_image'],
      statistics: json['statistics'] != null
          ? Statistics.fromJson(json['statistics'])
          : null,
      memberSince: json['member_since'],
    );
  }
}

class Location {
  final String? country;
  final String? state;

  Location({this.country, this.state});

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      country: json['country'],
      state: json['state'],
    );
  }
}

class Statistics {
  final int? totalOrders;
  final int? totalReviews;
  final double? averageRating;

  Statistics({
    this.totalOrders,
    this.totalReviews,
    this.averageRating,
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
  final int? currentPage;
  final int? lastPage;
  final int? perPage;
  final int? total;
  final int? from;
  final int? to;
  final PaginationLinks? links;

  Pagination({
    this.currentPage,
    this.lastPage,
    this.perPage,
    this.total,
    this.from,
    this.to,
    this.links,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) {
    return Pagination(
      currentPage: json['current_page'],
      lastPage: json['last_page'],
      perPage: json['per_page'],
      total: json['total'],
      from: json['from'],
      to: json['to'],
      links: json['links'] != null
          ? PaginationLinks.fromJson(json['links'])
          : null,
    );
  }
}

class PaginationLinks {
  final String? first;
  final String? last;
  final String? prev;
  final String? next;

  PaginationLinks({
    this.first,
    this.last,
    this.prev,
    this.next,
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