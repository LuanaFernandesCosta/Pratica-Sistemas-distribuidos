import 'package:flutter/material.dart';
import 'ComprarDetalhes.dart';

class Detalhe extends StatelessWidget {
  static const caminhoDaRota = '/rotaGenerica';
  final ComprarDetalhes detalhes;
  Detalhe(this.detalhes);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Comprar'),
            ),
            body: Center(
              child: SingleChildScrollView(
                  child: Stack(alignment: Alignment.center, children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(4),
                        child: Image(
                          image: NetworkImage(this.detalhes.url),
                          height: 200,
                          width: 400,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4),
                        child: Text(
                          this.detalhes.titulo,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4),
                        child: Text(
                          this.detalhes.subtitulo,
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4),
                        child: Text(
                          'R\$ ${this.detalhes.preco.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 40, bottom: 10, left: 4, right: 4),
                            child: Text(
                              'Voltar para a primeira rota',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          onTap: () => Navigator.pop(context),
                        ),
                      )
                    ],
                  ),
                ),
              ])),
            )));
  }
}
