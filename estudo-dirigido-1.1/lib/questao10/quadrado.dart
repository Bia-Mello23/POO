class Quadrado {
  double lado;
  String caractere;

  // Construtor
  Quadrado(this.lado, this.caractere) {
    if (lado <= 0) {
      throw Exception("O lado deve ser maior que 0");
    }
    if (caractere.isEmpty) {
      throw Exception("O caractere não pode ser vazio");
    }
    if (caractere.length != 1) {
      throw Exception("Use apenas 1 caractere");
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
        linha += caractere + " ";
      }
      print(linha);
    }
  }

  // Exibir resumo
  void exibirResumo() {
    print("Lado: $lado");
    print("Área: ${calcularArea()}");
    print("Perímetro: ${calcularPerimetro()}");
    print("----------------------");
  }

  // Comparar quadrados
  bool ehIgual(Quadrado outro) {
    return this.lado == outro.lado;
  }
}