class Produto {
  //Atributos
  int codigo; //numero de identificaçao
  String nome;//nome do item
  double precoUnitario;//o valor de uma unica unidade
  int quantidade;//quantidade

  // Construtor para inicializar o produto, recebe todos esses valores de uma vez > quando criado um produto 
  Produto(this.codigo, this.nome, this.precoUnitario, this.quantidade);

  //Método para calcular o valor do desconto > usando a lógica de if para verificar
  //a quantidade e aplicar o percentual correto 
  double calcularDesconto() {
    double percentual = 0;

    // Regras de desconto por quantidade 
    if (quantidade >= 20) {
      percentual = 0.15; // 15% para 20 ou mais unidades.
    } else if (quantidade >= 10) {
      percentual = 0.10; // 10% para 10 a 19 unidades.
    } else if (quantidade >= 5) {
      percentual = 0.05; // 5% para 5 a 9 unidades.
    } else {
      percentual = 0;    // Sem desconto até 4 unidades.
    }
    return (precoUnitario * quantidade) * percentual;
  }

  // Método para calcular o valor total final acima^^
  double calcularTotal() {
    // O total deve considerar a quantidade e o desconto 
    return (precoUnitario * quantidade) - calcularDesconto();
  }

  // Método para exibir o resumo
  //criei o produto, mostrei o resumo, e depois alterei seus atributos
  void exibirResumo() {
    print("Código: $codigo | Produto: $nome");
    print("Preço: R\$ $precoUnitario | Qtd: $quantidade");
    print("Desconto: R\$ ${calcularDesconto()}");
    print("Total a Pagar: R\$ ${calcularTotal()}");
  //usei interpolação com simbolo do cifrao > Dart > substitua o nome da variável pelo valor real que ele carrega
  }
}