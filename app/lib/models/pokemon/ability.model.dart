
import 'dart:convert';

class Ability {
  final String name;
  Ability({
    required this.name,
  });

  

  Ability copyWith({
    String? name,
  }) {
    return Ability(
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }

  factory Ability.fromMap(Map<String, dynamic> map) {
    return Ability(
      name: map['ability']['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Ability.fromJson(String source) => Ability.fromMap(json.decode(source));

  @override
  String toString() => 'Ability(name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Ability &&
      other.name == name;
  }

  @override
  int get hashCode => name.hashCode;
}
