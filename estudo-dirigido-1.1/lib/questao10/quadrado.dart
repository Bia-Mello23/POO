class Quadrado {
  double lado;
  String caractere;

  // Construtor
  Quadrado(this.lado, this.caractere) {
    if (lado <= 0) {
      lado = 1;
    }
    if (caractere.isEmpty) {
      caractere = "*";
    }
  }

  // Área
  double calcularArea() {
    return lado * lado;
  }

  // Perímetro
  double calcularPerimetro() {
    return 4 * lado;
  }

  // Desenhar quadrado
  void desenhar() {
    int tamanho = lado.toInt();

    for (int i = 0; i < tamanho; i++) {
      String linha = "";
      for (int j = 0; j < tamanho; j++) {
        linha += caractere;
      }
      print(linha);
    }
  }

  // Mostrar resumo
  void exibirResumo() {
    print("Lado: $lado");
    print("Área: ${calcularArea()}");
    print("Perímetro: ${calcularPerimetro()}");
    print("--------");
  }

  // Comparar quadrados
  bool ehIgual(Quadrado outro) {
    return this.lado == outro.lado &&
           this.caractere == outro.caractere;
  }
}