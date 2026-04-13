class Circulo {
  // Atributos obrigatórios (raio e cor)
  double raio;
  String cor; 

  //Regra: usar 3.14 como valor de pi e declarar como constante 
  //static: ele é um membro de classe > ele não muda de um objeto para outro
  //const:Garante que o valor de 3.14 nunca seja alterado por acidente
  static const double pi = 3.14;

  //Construtor que recebe todos os valores 
  Circulo(this.raio, this.cor);

  //Método para calcular a área: (pi * raio * raio)
  //Área: Multiplicamos o Pi pelo raio duas vezes
  double calcularArea() {
    return pi * (raio * raio);
  }

  //Método para calcular o perímetro: (2 * pi * raio)
  //Perímetro: É a medida da "volta" do círculo
  double calcularPerimetro() {
    return 2 * pi * raio;
  }
  //aréa e parametro: para que a lógica fique encapsulada dentro da classe

  // Método para mostrar o resumo solicitado 
  void exibirResumo() {
    print("--- RESUMO DO CÍRCULO ---");
    print("Raio: $raio");
    print("Cor: $cor");

    //toStringAsFixed(2) para o valor não ficar com muitos números decimais
    print("Área: ${calcularArea().toStringAsFixed(2)}");
    print("Perímetro: ${calcularPerimetro().toStringAsFixed(2)}"); //método para organizar as info
    print("-------------------------");
  }
}