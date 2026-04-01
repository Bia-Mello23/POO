import 'dart:math';

class Triangulo {
  
  double _lado1;
  double _lado2;
  double _lado3;
  String _caractere;

  Triangulo(this._lado1, this._lado2, this._lado3, this._caractere) {
    if (_lado1 <= 0 || _lado2 <= 0 || _lado3 <= 0) {
      print("Erro: Todos os lados devem ser maiores que 0!");
    }
    if (_caractere.isEmpty) {
      print("Erro: O caractere não pode ser vazio!");
    }
    if (_caractere.length > 1) {
      print("Erro: O caractere deve ter apenas 1 símbolo!");
    }
    if (!_ehValido()) {
      print("Erro: Os lados não formam um triângulo válido!");
    }
  }

  
  double get lado1 => _lado1;
  double get lado2 => _lado2;
  double get lado3 => _lado3;
  String get caractere => _caractere;

  
  set lado1(double valor) {
    if (valor <= 0) {
      print("Erro: O lado deve ser maior que 0!");
    } else {
      _lado1 = valor;
    }
  }

  set lado2(double valor) {
    if (valor <= 0) {
      print("Erro: O lado deve ser maior que 0!");
    } else {
      _lado2 = valor;
    }
  }

  set lado3(double valor) {
    if (valor <= 0) {
      print("Erro: O lado deve ser maior que 0!");
    } else {
      _lado3 = valor;
    }
  }

  bool _ehValido() {
    return (_lado1 + _lado2 > _lado3) &&
           (_lado1 + _lado3 > _lado2) &&
           (_lado2 + _lado3 > _lado1);
  }

  double calcularPerimetro() {
    return _lado1 + _lado2 + _lado3;
  }

  double calcularArea() {
    double s = calcularPerimetro() / 2;
    return sqrt(s * (s - _lado1) * (s - _lado2) * (s - _lado3));
  }

  void desenharEsquerda() {
    int linhas = _lado1.toInt();
    for (int i = 1; i <= linhas; i++) {
      String linha = "";
      for (int j = 0; j < i; j++) {
        linha += _caractere;
      }
      print(linha);
    }
  }

  void desenharCentralizado() {
    int linhas = _lado1.toInt();
    for (int i = 1; i <= linhas; i++) {
      int espacos = linhas - i;
      String linha = "";
      for (int s = 0; s < espacos; s++) {
        linha += " ";
      }
      for (int j = 0; j < i; j++) {
        linha += _caractere;
      }
      print(linha);
    }
  }

  void exibirResumo() {
    print("Lado 1: $_lado1");
    print("Lado 2: $_lado2");
    print("Lado 3: $_lado3");
    print("Área: ${calcularArea().toStringAsFixed(2)}");
    print("Perímetro: ${calcularPerimetro()}");
  }
}