import '../questao01/cliente.dart';
import '../questao03/produto.dart';
import '../questao05/itemcarrinho.dart';
import '../questao06/carrinho.dart';
import 'carrinho.dart';

void main() {
  var cliente = Cliente("Beatriz", "beatriz@email.com", 200.0, true);

 var p1 = Produto("Camiseta", 39.90, 50, true);
  var p2 = Produto("Calça", 89.90, 30, true);
  var p3 = Produto("Tênis", 199.90, 15, false);

  var item1 = ItemCarrinho(p1, 2);
  var item2 = ItemCarrinho(p2, 1);
  var item3 = ItemCarrinho(p3, 1);

  var listaItens = ListaCarrinho();
  listaItens.inserir(item1);
  listaItens.inserir(item2);
  listaItens.inserir(item3);

  var carrinho = Carrinho(cliente, listaItens, true);

  carrinho.exibirCarrinho();

  var produto4 = Produto("Webcam", 250.00, 3, true);
  var item4 = ItemCarrinho(produto4, 1);
  carrinho.adicionarItem(item4);

  carrinho.removerItem(0); // remove o mouse

  carrinho.exibirCarrinho();

  carrinho.aberto = false;
  carrinho.adicionarItem(ItemCarrinho(produto1, 1)); // não adiciona (carrinho fechado)
  carrinho.exibirCarrinho();
}