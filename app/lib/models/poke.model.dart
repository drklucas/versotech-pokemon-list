import 'dart:convert';

class PokeModel {
  int id; 
  String name; 
  int? base_experience; 
  int? height; 
  int? order; 
  int? weight; 
  PokeModel({
    required this.id,
    required this.name,
    this.base_experience,
    this.height,
    this.order,
    this.weight,
  });



  PokeModel copyWith({
    int? id,
    String? name,
    int? base_experience,
    int? height,
    int? order,
    int? weight,
  }) {
    return PokeModel(
      id: id ?? this.id,
      name: name ?? this.name,
      base_experience: base_experience ?? this.base_experience,
      height: height ?? this.height,
      order: order ?? this.order,
      weight: weight ?? this.weight,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'base_experience': base_experience,
      'height': height,
      'order': order,
      'weight': weight,
    };
  }

  factory PokeModel.fromMap(Map<String, dynamic> map) {
    return PokeModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      base_experience: map['base_experience']?.toInt(),
      height: map['height']?.toInt(),
      order: map['order']?.toInt(),
      weight: map['weight']?.toInt(),
    );
  }

  String toJson() => json.encode(toMap());

  factory PokeModel.fromJson(String source) => PokeModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PokeModel(id: $id, name: $name, base_experience: $base_experience, height: $height, order: $order, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is PokeModel &&
      other.id == id &&
      other.name == name &&
      other.base_experience == base_experience &&
      other.height == height &&
      other.order == order &&
      other.weight == weight;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      base_experience.hashCode ^
      height.hashCode ^
      order.hashCode ^
      weight.hashCode;
  }
}
