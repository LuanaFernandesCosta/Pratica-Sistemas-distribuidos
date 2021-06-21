import 'package:flutter/material.dart';
import 'ComprarDetalhes.dart';

class Comprar extends StatelessWidget {
  static const caminhoDaRota = '/rotaGenerica';
  final ComprarDetalhes detalhes;
  Comprar(this.detalhes);

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
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: [
                        Text(
                          'Página de Compra',
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.purple[900],
                            fontWeight: FontWeight.bold,
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
                    ))
              ])),
            )));
  }
}
