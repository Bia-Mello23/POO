class Quadrado {
  
  double _lado;        
  String _caractere;  

  Quadrado(this._lado, this._caractere) {
    if (_lado <= 0) {
      throw ArgumentError("O lado deve ser maior que 0!");
    }
    if (_caractere.isEmpty) {
      throw ArgumentError("O caractere nao pode ser vazio!");
    }
    if (_caractere.length > 1) {
      throw ArgumentError("O caractere deve ter apenas 1 simbolo!");
    }
  }

  
  double get lado => _lado;
  String get caractere => _caractere;

  double calcularArea() {
    return _lado * _lado;
  }

  double calcularPerimetro() {
    return _lado * 4;
  }

  void desenhar() {
    int tamanho = _lado.toInt();
    for (int linha = 0; linha < tamanho; linha++) {
      String linhinha = "";
      for (int coluna = 0; coluna < tamanho; coluna++) {
        linhinha += _caractere;
      }
      print(linhinha);
    }
  }

  void exibirResumo() {
    print("Lado: $_lado");
    print("Área: ${calcularArea()}");
    print("Perímetro: ${calcularPerimetro()}");
  }

  bool ehIgual(Quadrado outroQuadrado) {
    return _lado == outroQuadrado._lado;
  }
}