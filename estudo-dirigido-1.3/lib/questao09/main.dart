import 'pedido.dart';
import 'carrinho.dart';
import 'CupomDesconto.dart';

void main() {
  var carrinho = Carrinho(500.0);
  var pedido = Pedido("2", carrinho, "aberto");

  pedido.cupom = CupomDesconto("Promoção", 0.50);
  pedido.fecharPedido();
  pedido.exibirResumoPedido();
}