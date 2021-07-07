import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seguridaddospasos/modelo/Modelo.dart';

class UsuarioTokenData extends StatelessWidget {
  final UsuarioToken usuariosToken;

  UsuarioTokenData(this.usuariosToken);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        readOnly: true,
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
            labelText: usuariosToken.codigo.toString().substring(1)),
      ),
    );
  }
}
