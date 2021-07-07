import 'package:flutter/material.dart';
import 'package:seguridaddospasos/Controller/UsuarioTokenData.dart';
import 'package:seguridaddospasos/Proveedor/Proveedor.dart';
import 'package:seguridaddospasos/modelo/Modelo.dart';
// import 'package:peliculas/src/widgets/card_swiper_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seguridad de dos pasos'),
        backgroundColor: Colors.lightBlue,
        //Poniendo botones de la barra principal superior
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search_rounded), onPressed: () {})
        ],
      ),
      body: ContenedorPrincipal(),
    );
  }
}

class ContenedorPrincipal extends StatelessWidget {
  // const ContenedorPrincipal({key}) : super(key: key);
  final codigoproveedor = new Proveedor();
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Text("Este es el código que debe ingresar"),
            Divider(),
            Row(
              children: <Widget>[
                Expanded(child: _codigo1()),
                VerticalDivider(color: const Color(0xFF)),
                Expanded(child: _codigo2()),
                VerticalDivider(color: const Color(0xFF)),
                Expanded(child: _codigo3()),
                VerticalDivider(color: const Color(0xFF)),
                Expanded(child: _codigo4()),
                VerticalDivider(color: const Color(0xFF)),
                Expanded(child: _codigo5()),
                VerticalDivider(color: const Color(0xFF)),
                Expanded(child: _codigo6()),
              ],
            ),
          ],
        ));
  }

  Widget _codigo1() {
    // peliculasprovider.getEnCines();
    // return CardSwiper(peliculas: [1, 2, 3, 4, 5]);

    final usuario = new UsuarioToken();
    return FutureBuilder(
      future: codigoproveedor.getUsuario(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          // return CardSwiper(peliculas: snapshot.data);
          return UsuarioTokenData(usuario);
        } else {
          return TextField(
            readOnly: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                labelText: "0"),
          );
        }
      },
    );
  }

  _codigo2() {
    return TextField(
      readOnly: true,
      decoration: InputDecoration(
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
    );
  }

  _codigo3() {
    return TextField(
      readOnly: true,
      decoration: InputDecoration(
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
    );
  }

  _codigo4() {
    return TextField(
      readOnly: true,
      decoration: InputDecoration(
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
    );
  }

  _codigo5() {
    return TextField(
      readOnly: true,
      decoration: InputDecoration(
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
    );
  }

  _codigo6() {
    return TextField(
      readOnly: true,
      decoration: InputDecoration(
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
    );
  }
}
