import '../questao03/produto.dart';
import 'lista_produto.dart';

void main() {
  // Criar alguns produtos
  var p1 = Produto("Camiseta", 39.90, 50, true);
  var p2 = Produto("Calça", 89.90, 30, true);
  var p3 = Produto("Tênis", 199.90, 15, false);

  // Criar a lista de produtos
  var lista = ListaProduto();

  // Inserir produtos
  lista.inserir(p1);
  lista.inserir(p2);
  lista.inserir(p3);

  // Exibir lista
  lista.exibirLista();

  // Mostrar tamanho
  print("Tamanho da lista: ${lista.tamanho()}");

  // Recuperar produto pelo índice (get)
  var produtoRecuperado = lista.get(1);
  if (produtoRecuperado != null) {
    print("\nProduto recuperado no índice 1:");
    produtoRecuperado.exibirProduto();
  }

  // Remover produto pelo índice (válido)
  lista.remover(0);  // remove Camiseta

  // Tentar remover com índice inválido
  lista.remover(10);

  // Exibir lista novamente
  lista.exibirLista();

  // Novo tamanho
  print("Novo tamanho: ${lista.tamanho()}");
}