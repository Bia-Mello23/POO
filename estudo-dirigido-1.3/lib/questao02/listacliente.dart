class ListaCliente {
  //atributo privado para guardar os clientes 
  final List<Cliente> _clientes = [];

  //adiciona um cliente à lista 
  void inserir(Cliente cliente) { 
    _clientes.add(cliente); //começa com _ para garantir encapsulamento
  }                     

  //remove apenas se o índice for válido 
  void remover(int i) {
    if (i >= 0 && i < _clientes.length) { //garante que o indice seja valido
      _clientes.removeAt(i);
    }
  }

  //retorna a quantidade de itens 
  int tamanho() { 
    return _clientes.length;
  }

  //busca um cliente específico com validação 
  Cliente? get(int i) {
    if (i >= 0 && i < _clientes.length) {
      return _clientes[i];
    }
    return null; //retorna nulo se o índice não existir
  }

  //mostra todos os clientes
  void exibirLista() {
    for (var cliente in _clientes) {
      cliente.exibirCliente();
    }
  }
}