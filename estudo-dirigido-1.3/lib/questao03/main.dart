import 'produto.dart';

void main() {
  // Criando dois produtos
  Produto p1 = Produto("Teclado", 130.0, 10, true);
  Produto p2 = Produto("Mouse", 83.0, 5, true);

  // Alterando dados usando os setters
  p1.nome = "Teclado Gamer";
  p1.preco = 160.0;

  // Repondo estoque de um
  p1.reporEstoque(5);  

  // Retirando estoque de outro
  p2.retirarEstoque(2);

  // Exibir
  p1.exibir();
  p2.exibir();
}