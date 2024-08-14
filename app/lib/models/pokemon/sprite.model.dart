import 'dart:convert';

class Sprite {
  final String front_default;
  final String back_default;
  final String front_shiny;
  final String back_shiny;
  Sprite({
    required this.front_default,
    required this.back_default,
    required this.front_shiny,
    required this.back_shiny,
  });
 

  Sprite copyWith({
    String? front_default,
    String? back_default,
    String? front_shiny,
    String? back_shiny,
  }) {
    return Sprite(
      front_default: front_default ?? this.front_default,
      back_default: back_default ?? this.back_default,
      front_shiny: front_shiny ?? this.front_shiny,
      back_shiny: back_shiny ?? this.back_shiny,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'front_default': front_default,
      'back_default': back_default,
      'front_shiny': front_shiny,
      'back_shiny': back_shiny,
    };
  }

  factory Sprite.fromMap(Map<String, dynamic> map) {
    return Sprite(
      front_default: map['front_default'] ?? '',
      back_default: map['back_default'] ?? '',
      front_shiny: map['front_shiny'] ?? '',
      back_shiny: map['back_shiny'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Sprite.fromJson(String source) => Sprite.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Sprite(front_default: $front_default, back_default: $back_default, front_shiny: $front_shiny, back_shiny: $back_shiny)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Sprite &&
      other.front_default == front_default &&
      other.back_default == back_default &&
      other.front_shiny == front_shiny &&
      other.back_shiny == back_shiny;
  }

  @override
  int get hashCode {
    return front_default.hashCode ^
      back_default.hashCode ^
      front_shiny.hashCode ^
      back_shiny.hashCode;
  }
}
