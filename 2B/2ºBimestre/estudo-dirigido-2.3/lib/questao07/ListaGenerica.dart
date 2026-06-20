class ListaGenerica<T> {
  final List<T> _itens = [];

  void adicionar(T item) {
    _itens.add(item);
  }

  void imprimirItens() {
    print ('Itens da Lista');
    for (var item in _itens) {
      print(item.toString());
    }
  }

  List<T> get itens => _itens;
}