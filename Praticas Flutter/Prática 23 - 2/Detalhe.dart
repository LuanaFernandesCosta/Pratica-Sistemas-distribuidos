import 'package:flutter/material.dart';
import 'main.dart';

class Detalhe extends StatelessWidget {
  final Produto detalhes;
  Detalhe(this.detalhes);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Produto'),
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
                        child: Text(
                          this.detalhes.nome,
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4),
                        child: Image(
                          image: NetworkImage(this.detalhes.url),
                          height: 300,
                          width: 400,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4),
                        child: Text(
                          this.detalhes.descricao,
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4),
                        child: Text(
                          'R\$ ${this.detalhes.preco.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.deepPurple,
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
