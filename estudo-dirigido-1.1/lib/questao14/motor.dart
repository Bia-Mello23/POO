class Motor {
  int _potencia;
  String _tipo;

  Motor(this._potencia, this._tipo) {
    if (_potencia <= 0) {
      print("Erro: A potência deve ser maior que 0!");
    }
    if (_tipo.isEmpty) {
      print("Erro: O tipo não pode ser vazio!");
    }
  }

  int get potencia => _potencia;
  String get tipo => _tipo;

  void exibirMotor() {
    print("Potência: $_potencia cv");
    print("Tipo: $_tipo");
  }
}