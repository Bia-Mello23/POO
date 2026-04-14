class Produto {
  // Atributos privados 
  String _nome;
  double _preco;
  int _estoque;
  bool _ativo;

  // Construtor
  Produto(this._nome, this._preco, this._estoque, this._ativo);

  // GETTERS 
  String get nome { return _nome; }
  double get preco { return _preco; }
  int get estoque { return _estoque; }

  // SETTERS ( mudar os dados com validação)
  set nome(String valor) {
    if (valor != "") {
      _nome = valor;
    } else {
      print("Erro: O nome não pode estar vazio!");
    }
  }

  set preco(double valor) {
    if (valor >= 0) {
      _preco = valor;
    } else {
      print("Erro: O preço não pode ser negativo!");
    }
  }

  set estoque(int valor) {
    if (valor >= 0) {
      _estoque = valor;
    } else {
      print("Erro: O estoque não pode ser negativo!");
    }
  }

  // MÉTODOS DE AÇÃO
  void ativar() {
    _ativo = true;
  }

  void desativar() {
    _ativo = false;
  }

  void reporEstoque(int quantidade) {
    _estoque = _estoque + quantidade;
  }

  void retirarEstoque(int quantidade) {
    if (quantidade <= _estoque) {
      _estoque = _estoque - quantidade;
    } else {
      print("Erro: Estoque insuficiente para retirar $quantidade unidades.");
    }
  }

  void exibir() {
    print("\nProduto: $_nome");
    print("Preço: R\$ $_preco");
    print("Estoque: $_estoque");
    if (_ativo == true) {
      print("Status: Ativo");
    } else {
      print("Status: Inativo");
    }
  }
}