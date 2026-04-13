class Produto {
  String nome;
  double preco; //dinheiro tem centavos (vírgula)
  int quantidadeEstoque;

  //construtor
  Produto(this.nome, this.preco, this.quantidadeEstoque);

  //método para adicionar itens (Compra/Reposição)
  void adicionarEstoque(int quantidade) { //não vende "meio" produto físico
    quantidadeEstoque += quantidade;        //ou tem 1 ou tem 2
    print("--- Reposição: $nome ---");
    print("Adicionados $quantidade itens. Novo total: $quantidadeEstoque");
  }

  //método para retirar itens (Venda) com VALIDAÇÃO
  void vender(int quantidade) {  //quantidade de itens físicos é sempre um número inteiro
    print("--- Venda: $nome ---"); //verifica a disponibilidade antes de subtrair o valor,
    print("Tentando vender $quantidade unidades..."); //evitando que o estoque fique negativo

    if (quantidade <= quantidadeEstoque) {  //if impede o estoque negativo, garante que você nunca venda mais do que tem
      quantidadeEstoque -= quantidade;
      print("Venda realizada! Restam $quantidadeEstoque unidades.");
    } else {
      print("Erro: Estoque insuficiente! Temos apenas $quantidadeEstoque unidades.");
    }
    print("----------------------------");
  }

  //mostra o valor total que o estoque vale
  double calcularValorEmEstoque() { //enquanto preço envolve centavos, por isso o uso de tipos diferentes para cada necessidade
    return preco * quantidadeEstoque; //valor financeiro total
  }
}