import 'package:flutter/material.dart';

//Uso de refatoração para melhor entendimento e desempenho do app

void main() => runApp (MaterialApp(
home: Scaffold (
  body:ListaTransferencias(),
  appBar: AppBar(title: Text("Transferências")),
      floatingActionButton: FloatingActionButton(
        onPressed: () { },
        child: Icon(Icons.add),
      ),
  ),
));



class ListaTransferencias extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        ItemTransferencia("100.00", "140"),
    ItemTransferencia("90.0", "123"),
    ItemTransferencia("130.0", "899"),
    ItemTransferencia("10.0", "90"),
    ItemTransferencia("1000", "984"),
            ],
         );
        }

}

class ItemTransferencia extends StatelessWidget {

 final String valor;
 final String numeroConta;

 ItemTransferencia(this.valor, this.numeroConta);

  @override
Widget build(BuildContext context) {
return  Card(
  child: ListTile(
    leading: Icon(Icons.monetization_on),
    title: Text(valor),
    subtitle: Text(numeroConta),
  ),
);
}
}
