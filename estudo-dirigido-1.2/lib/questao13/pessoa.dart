import 'carteira.dart';

class Pessoa {
  String _nome;
  Carteira _carteira;

  Pessoa(this._nome, this._carteira);

  // Getters
  String get nome => _nome;
  Carteira get carteira => _carteira;

  // Método para exibir o estado da pessoa
  void exibir() {
    print("$nome tem saldo de R\$ ${_carteira.saldo.toStringAsFixed(2)}");
  }
}