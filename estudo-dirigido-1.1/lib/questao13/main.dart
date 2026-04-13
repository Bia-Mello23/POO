
import 'produto.dart';

void main() {

  // Criando produtos

  Produto p1 = Produto("Fone de Ouvido", 310.00);

  Produto p2 = Produto("Microfone", 220.00);
 
  // Criando pedidos

  Pedido pedido1 = Pedido(1, p1, 1);

  Pedido pedido2 = Pedido(2, p2, );
 
  // Exibindo dados

  pedido1.exibirPedido();

  pedido2.exibirPedido();

}
 