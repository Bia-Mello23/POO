class ItemCarrinho {
  String nome;
  double preco;

  ItemCarrinho(this.nome, this.preco);

  void exibir() {
    print("Item: $nome | Preço: R\$ $preco");
  }
}

class ListaCarrinho {
  // Estrutura interna privada para guardar os itens
  List<ItemCarrinho> _itens = [];

  // Adiciona um item na lista
  void inserir(ItemCarrinho item) {
    _itens.add(item);
  }

  // Remove apenas se o índice existir
  void remover(int i) {
    if (i >= 0 && i < _itens.length) {
      _itens.removeAt(i);
      print("Item da posição $i removido com sucesso.");
    } else {
      print("Erro: Posição $i inválida para remoção.");
    }
  }

  // Retorna a quantidade de itens
  int tamanho() {
    return _itens.length;
  }

  // Recupera um item específico pelo índice
  ItemCarrinho? get(int i) {
    if (i >= 0 && i < _itens.length) {
      return _itens[i];
    } else {
      print("Erro: Posição $i inválida para busca.");
      return null;
    }
  }

  // Mostra todos os itens da lista
  void exibirLista() {
    print("CONTEÚDO DO CARRINHO\n");
    if (_itens.isEmpty) {
      print("O carrinho está vazio.");
    } else {
      for (int i = 0; i < _itens.length; i++) {
        print("[$i] - ${_itens[i].nome} (R\$ ${_itens[i].preco})");
      }
    }
  }
}