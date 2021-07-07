class UsuariosToken {
  UsuarioToken items;

  UsuariosToken();

  UsuariosToken.fromJson(List<dynamic> jsonList) {
    if (jsonList == null) return;

    final usuario = new UsuarioToken.fromJsonMap(jsonList);
    if (usuario != null) {
      items = usuario;
    }
  }
}

class UsuarioToken {
  DateTime registro;
  String id;
  String usuarioId;
  int codigo;

  UsuarioToken({this.registro, this.id, this.usuarioId, this.codigo});

  UsuarioToken.fromJsonMap(Map<String, dynamic> json) {
    registro = json['registro'];
    id = json['_id'];
    usuarioId = json['usuarioId'];
    codigo = json['codigo'];
  }
}
