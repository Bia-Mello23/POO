class ItemCarrinho {
  //Atributos privados: um é um objeto de outra classe (Produto)
  Produto _produto; //objeto da classe produto
  int _quantidade;

  //Construtor para inicializar
  ItemCarrinho(this._produto, this._quantidade);

  // Getters 
  Produto get produto => _produto;
  int get quantidade => _quantidade;

  //Setter com validação: quantidade deve ser maior que zero 
  set quantidade(int valor) {
    if (valor > 0) {    //usei um if para garantir que a quantdd seja sempre maior que 0
      _quantidade = valor;
    }
  }

  //Método para calcular o valor total deste item (Preço x Quantidade) 
  double calcularSubtotal() { //
    return _produto.preco * _quantidade;
  }

  //Método para exibir os detalhes do item 
  void exibirItem() {
    print("Item: ${_produto.nome} | Qtd: $_quantidade | Subtotal: R\$ ${calcularSubtotal()}");
  }
}