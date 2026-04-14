import 'carrinho.dart';

void main() {
  // Criando a lista
  ListaCarrinho meuCarrinho = ListaCarrinho();

  // Criando e inserindo objetos
  meuCarrinho.inserir(ItemCarrinho("Monitor", 850.0));
  meuCarrinho.inserir(ItemCarrinho("Teclado", 135.0));
  meuCarrinho.inserir(ItemCarrinho("fone", 85.0));

  // Mostrando o tamanho inicial
  print("Tamanho do carrinho: ${meuCarrinho.tamanho()}");
  meuCarrinho.exibirLista();

  // Removendo um item pelo índice (Ex: Teclado na posição 1)
  meuCarrinho.remover(1);

  // Recuperando um item com get(i)
  ItemCarrinho? itemRecuperado = meuCarrinho.get(0);
  if (itemRecuperado != null) {
    print("\nItem recuperado na posição 0: ${itemRecuperado.nome}");
  }

  // Exibindo conteúdo final
  print("\nEstado final do carrinho:");
  print("Tamanho atual: ${meuCarrinho.tamanho()}");
  meuCarrinho.exibirLista();
}