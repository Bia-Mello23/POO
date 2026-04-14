import 'itemcarrinho.dart';
void main() {
  //criar um produto (precisamos dele para o item)
  Produto p1 = Produto("Monitor 24'", 900.0, 10, true); //dependência entre os objetos

  //criar o item do carrinho associando o produto
  ItemCarrinho item1 = ItemCarrinho(p1, 2);

  //exibir inicial
  print("--- Teste Item Carrinho ---");
  item1.exibirItem(); 

  //aterar quantidade com o setter (validação)
  item1.quantidade = 3;  //testando o setter //acessando a variavel _quantidade diretamente (por que ela é privada)
  
  //exibir com a nova quantidade e subtotal calculado
  print("Após alteração de quantidade:");
  item1.exibirItem(); 
}