import 'dart:convert';

class PaginationMeta {

  int limit; 
  int offset; 
  int count;
  PaginationMeta({
    required this.limit,
    required this.offset,
    required this.count,
  });


  PaginationMeta copyWith({
    int? limit,
    int? offset,
    int? count,
  }) {
    return PaginationMeta(
      limit: limit ?? this.limit,
      offset: offset ?? this.offset,
      count: count ?? this.count,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'limit': limit,
      'offset': offset,
      'count': count,
    };
  }

  factory PaginationMeta.fromMap(Map<String, dynamic> map) {
    return PaginationMeta(
      limit: map['limit']?.toInt() ?? 0,
      offset: map['offset']?.toInt() ?? 0,
      count: map['count']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory PaginationMeta.fromJson(String source) => PaginationMeta.fromMap(json.decode(source));

  @override
  String toString() => 'PaginationMeta(limit: $limit, offset: $offset, count: $count)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PaginationMeta &&
      other.limit == limit &&
      other.offset == offset &&
      other.count == count;
  }

  @override
  int get hashCode => limit.hashCode ^ offset.hashCode ^ count.hashCode;
}
