import 'package:flutter/material.dart';

//Uso de refatoração para melhor entendimento e desempenho do app

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListaTransferencias(),
      ),
    );
  }
}

class FormularioTransferencia extends StatelessWidget {

  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Criando transferencia"),
        ),
        body: Column(
          children: <Widget>[
       Editor(controlador: _controladorCampoNumeroConta,
            dica: "0000",
            rotulo: "Numero da conta", icone: null,
       ),
        Editor(dica:'0.00',
        controlador: _controladorCampoValor,
        rotulo: "Valor",
        icone: Icons.monetization_on,
        ),
            ElevatedButton(
              child: Text("Confirmar"),
              onPressed: () => _criaTransferencia(),
            )
          ],
        ));
  }

  void _criaTransferencia() {
      final int? numeroConta =
    int.tryParse(_controladorCampoNumeroConta.text);
                  final double? valor =
                  double.tryParse(_controladorCampoValor.text);
                if(numeroConta !=null && valor!= null){
                 final transferenciaCriada= Transferencia(valor, numeroConta);

                }
  }
}
class Editor extends StatelessWidget {
 final TextEditingController controlador;
 final String rotulo;
 final String dica;
final IconData? icone;

 Editor({required this.controlador, required this.rotulo, required this.dica,required this.icone}) {
   // TODO: implement

 }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controlador,
        style: TextStyle(fontSize: 16.0),
        decoration: InputDecoration(
          icon: icone!=null ? Icon(icone): null,
          labelText: rotulo,
          hintText: dica,
        ),
        keyboardType: TextInputType.number,
      ),
    );

  }
}


class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("Transferências")),
      body: Column(
        children: <Widget>[
          ItemTransferencia(Transferencia(100.0, 890)),
          ItemTransferencia(Transferencia(90.0, 690)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          final Future<Transferencia> future= Navigator.push(context, MaterialPageRoute(builder:(context){
 return FormularioTransferencia();
          }));
          future.then(transferenciaRecebida) {}
        },
      ),
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}

class Transferencia {
  final double? valor;
  final int? numeroConta;
  Transferencia(this.valor, this.numeroConta);
  @override
  String toString() {
    return 'Transferencia{valor:$valor, numeroConta: $numeroConta}';

  }
}







