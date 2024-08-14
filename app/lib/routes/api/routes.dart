// ignore_for_file: non_constant_identifier_names

class ApiRoutes {
  static const URL = 'https://pokeapi.co/api/v2/';
 static final pokeList = _PokeList(); 
 static final pokeItem = _PokeItem(); 
}

 class _PokeList {
    final GET = 'pokemon'; 
  }

  class _PokeItem {
    GET(int id) => 'pokemon/$id'; 
  }