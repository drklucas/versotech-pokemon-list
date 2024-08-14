import 'package:app/models/response.data.dart';
import 'package:app/models/service.data.dart';
import 'package:app/requester/requester.dart';
import 'package:app/routes/api/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PokeListService {
  static Future<ServiceData> get(BuildContext context) async {
    ResponseData response = await context.read<RequestDispatcher>().get(
          ApiRoutes.pokeList.GET,
          context: context,
        );

    if (response.statusCode == 201 || response.statusCode == 200) {
      return ServiceData(
        ok: true,
        msg: 'Pokémon list loaded!',
        data: response.data,
      );
    }

    return ServiceData(
      ok: false,
      msg: 'Unable to load Pokémon list.',
      data: null,
    );
  }
}
