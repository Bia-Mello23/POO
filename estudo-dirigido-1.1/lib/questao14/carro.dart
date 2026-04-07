import 'motor.dart';

class Carro {
  String _modelo;
  Motor _motor;

  Carro(this._modelo, this._motor) {
    if (_modelo.isEmpty) {
      print("Erro: O modelo não pode ser vazio!");
    }
  }

  String get modelo => _modelo;
  Motor get motor => _motor;

  void exibirCarro() {
    print("Modelo: $_modelo");
    print(" Dados do Motor ");
    _motor.exibirMotor();
  }
}