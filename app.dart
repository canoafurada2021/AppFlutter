(revisar botões do tipo string para retor dos valores $numerodaConta e $Valor)
 
 import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(

    ),

    );
  },
}
class FormularioTransferencia extends StatelessWidget {

  final TextEditingController _controladorCampoNumeroConta = TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fazendo Transferência"),
      ),
      body: Column(
        children: <Widget> [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controladorCampoNumeroConta,
              style: TextStyle(
            fontSize: 24.0
      ),
         decoration: InputDecoration(
         labelText: "Numero da Conta",
        hintText: "0000"
         ),
              keyboardType: TextInputType.number,
    ),
          ),
          TextField(
          controller: _controladorCampoValor,
            style: TextStyle(
                fontSize: 24.0
            ),
            decoration: InputDecoration(
               icon:Icon(Icons.monetization_on),
                labelText: "Valor",
                hintText: "0.00"
            ),
            keyboardType: TextInputType.number,
          ),
          ElevatedButton(
            child: Text('Confirmar'),
            onPressed: () {
    debugPrint("Clicou no botão");
    child: Text('Confirmar');
    onPressed: () {
    debugPrint('clicou no confirmar');

    final int? numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    final double? valor= double.tryParse(_controladorCampoValor.text);
    Transferencia(valor, numeroConta);
    if(numeroConta !=null && valor !=null){
     final transferenciaCriada =  Transferencia(valor, numeroConta);
     debugPrint ("$transferenciaCriada");
    }


    };
    },


    );
        ],;
  }
}

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      body: Column(children: <Widget>[
        ItemTransferencia(Transferencia(100.0, 1000)),
        ItemTransferencia(Transferencia(200.0, 2000)),
        ItemTransferencia(Transferencia(300.0, 3000)),
      ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia_Transferencia;

  ItemTransferencia(this._Transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_Transferencia.valor.toString()),
        subtitle: Text(_Transferencia.numeroConta.toString()),
      ),
    );
  }
}



  Transferencia(this.valor,this.numeroConta) {

  }

  @override
  String toString() {
    return 'Transferencia{valor: $valor}';
  }

