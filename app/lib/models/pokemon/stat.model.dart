
import 'dart:convert';

class Stat {
  final String name;
  final int baseStat;
  Stat({
    required this.name,
    required this.baseStat,
  });


  Stat copyWith({
    String? name,
    int? baseStat,
  }) {
    return Stat(
      name: name ?? this.name,
      baseStat: baseStat ?? this.baseStat,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'baseStat': baseStat,
    };
  }

  factory Stat.fromMap(Map<String, dynamic> map) {
    return Stat(
      name: map['stat']['name'] ?? '',
      baseStat: map['base_stat']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Stat.fromJson(String source) => Stat.fromMap(json.decode(source));

  @override
  String toString() => 'Stat(name: $name, baseStat: $baseStat)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Stat &&
      other.name == name &&
      other.baseStat == baseStat;
  }

  @override
  int get hashCode => name.hashCode ^ baseStat.hashCode;
}
