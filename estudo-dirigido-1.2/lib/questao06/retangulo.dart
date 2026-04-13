class Retangulo {
  double _largura;
  double _altura;

  // 1. Construtor padrão com parâmetros
  Retangulo(this._largura, this._altura);

  // 2. Construtor sem parâmetros que cria um quadrado 1x1
  // Usamos um construtor nomeado aqui, pois o Dart só permite um construtor não nomeado
  Retangulo.unitario() : _largura = 1.0, _altura = 1.0;

  // 3. Construtor nomeado Retangulo.quadrado(double lado)
  Retangulo.quadrado(double lado) : _largura = lado, _altura = lado;

  // Métodos de cálculo
  double calcularArea() => _largura * _altura;

  double calcularPerimetro() => 2 * (_largura + _altura);

  void exibirDados() {
    print("--- Dados do Retângulo ---");
    print("Dimensões: ${_largura}x${_altura}");
    print("Área: ${calcularArea()}");
    print("Perímetro: ${calcularPerimetro()}");
    print("--------------------------");
  }
}