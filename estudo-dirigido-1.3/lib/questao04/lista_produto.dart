
import '../questao03/produto.dart';  // Reutiliza a classe Produto

class ListaProduto {
  // Atributo privado: lista de produtos
  List<Produto> _produtos;

  // Construtor: inicializa lista vazia
  ListaProduto() : _produtos = [];

  // Inserir produto no final da lista
  void inserir(Produto produto) {
    _produtos.add(produto);
    print("Produto ${produto.nome} inserido na lista.");
  }

  // Remover produto pelo índice (com validação)
  void remover(int i) {
    if (i < 0 || i >= _produtos.length) {
      print("Erro: Índice $i inválido. A lista tem ${_produtos.length} produto(s).");
      return;
    }
    Produto removido = _produtos.removeAt(i);
    print("Produto ${removido.nome} removido da posição $i.");
  }

  // Retornar o tamanho da lista
  int tamanho() {
    return _produtos.length;
  }

  // Recuperar produto pelo índice (retorna null se inválido)
  Produto? get(int i) {
    if (i < 0 || i >= _produtos.length) {
      print("Erro: Índice $i inválido. A lista tem ${_produtos.length} produto(s).");
      return null;
    }
    return _produtos[i];
  }

  // Exibir todos os produtos da lista
  void exibirLista() {
    if (_produtos.isEmpty) {
      print("A lista de produtos está vazia.");
      return;
    }
    print("\n===== LISTA DE PRODUTOS =====");
    for (int i = 0; i < _produtos.length; i++) {
      print("\n--- Produto $i ---");
      _produtos[i].exibirProduto();
    }
    print("==============================\n");
  }
}