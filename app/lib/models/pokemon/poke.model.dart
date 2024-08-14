import 'dart:convert';

import 'package:app/models/pokemon/ability.model.dart';
import 'package:app/models/pokemon/sprite.model.dart';
import 'package:app/models/pokemon/stat.model.dart';
import 'package:collection/collection.dart';

class PokeModel {
  final int id;
  final String name;
  final String imageUrl;
  final Sprite sprites; 
  final String species; 
  final String url; 
  final int height;
  final int weight;
  final List<Ability> abilities;
  final List<Stat> stats;
  PokeModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.sprites,
    required this.url,
    required this.height,
    required this.weight,
    required this.species, 
    required this.abilities,
    required this.stats,
  });
 

  PokeModel copyWith({
    int? id,
    String? name,
    String? imageUrl,
    Sprite? sprites,
    String? url,
    int? height,
    String? species, 
    int? weight,
    List<Ability>? abilities,
    List<Stat>? stats,
  }) {
    return PokeModel(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      sprites: sprites ?? this.sprites,
      url: url ?? this.url,
      height: height ?? this.height,
      species: species ?? this.species,
      weight: weight ?? this.weight,
      abilities: abilities ?? this.abilities,
      stats: stats ?? this.stats,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'sprites': sprites.toMap(),
      'url': url,
      'height': height,
      'weight': weight,
      'abilities': abilities.map((x) => x.toMap()).toList(),
      'stats': stats.map((x) => x.toMap()).toList(),
    };
  }
  factory PokeModel.fromMap(Map<String, dynamic> map) {
    return PokeModel(
       id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      imageUrl: map['sprites']?['front_default'] ?? '',
      url: map['url'] ?? '',
      height: map['height'] ?? 0,
      species: map['species']?['name'] ?? '',
      weight: map['weight'] ?? 0,
      abilities: map['abilities'] == null ? [] : List<Ability>.from(map['abilities']?.map((x) => Ability.fromMap(x))),
      stats:  map['stats'] == null ? [] : List<Stat>.from(map['stats']?.map((x) => Stat.fromMap(x))),
      sprites: Sprite.fromMap(map['sprites'] ?? {}),
    );
  }

  String toJson() => json.encode(toMap());

  factory PokeModel.fromJson(String source) => PokeModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PokeModel(id: $id, name: $name, imageUrl: $imageUrl, sprites: $sprites, url: $url, height: $height, weight: $weight, abilities: $abilities, stats: $stats)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;
  
    return other is PokeModel &&
      other.id == id &&
      other.name == name &&
      other.imageUrl == imageUrl &&
      other.sprites == sprites &&
      other.url == url &&
      other.height == height &&
      other.weight == weight &&
      listEquals(other.abilities, abilities) &&
      listEquals(other.stats, stats);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      imageUrl.hashCode ^
      sprites.hashCode ^
      url.hashCode ^
      height.hashCode ^
      weight.hashCode ^
      abilities.hashCode ^
      stats.hashCode;
  }
}
