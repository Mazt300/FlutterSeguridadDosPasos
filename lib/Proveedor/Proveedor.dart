import 'dart:convert';

import 'package:seguridaddospasos/modelo/Modelo.dart';

import 'package:http/http.dart' as http;

class Proveedor {
  // String _apikey = '1478bde49b2797c52dc4ebc3d877b2d9';
  String _url = '192.168.43.188:4000';
  // String _language = 'es-ES';

  Future<UsuariosToken> getUsuario() async {
    final url = Uri.http(_url, '/api/usuariotoken/60e4bc84ba19a2064c952015',
        {'api_key': '', 'language': ''});

    final resp = await http.get(url);

    final decodedata = json.decode(resp.body);

    final codigo = new UsuariosToken.fromJson(decodedata['usuariotoken']);
    print(codigo.items);
    return codigo;
  }
}
