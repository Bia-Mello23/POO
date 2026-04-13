class Produto {
  String nome;
  double preco;
 
  Produto(this.nome, this.preco);
 
  void exibirProduto() {
    print("Produto: $nome");
    print("Preço: R\$ $preco");
  }
}
class Pedido {
  int numero;
  Produto produto;
  int quantidade;
 
  // Construtor
  Pedido(this.numero, this.produto, this.quantidade) {
    if (numero <= 0) {
      throw Exception("Número do pedido deve ser maior que 0");
    }
    if (quantidade <= 0) {
      throw Exception("Quantidade deve ser maior que 0");
    }
  }
 
  // Método para calcular o total
  double calcularTotal() {
    return produto.preco * quantidade;
  }
 
  // Método para exibir o pedido
  void exibirPedido() {
    print("Número do Pedido: $numero");
    produto.exibirProduto();
    print("Quantidade: $quantidade");
    print("Total: R\$ ${calcularTotal()}");
  }  
}