import 'pedido.dart';
import 'processavel.dart';

class PedidoDelivery extends Pedido implements Processavel {
  String enderecoEntrega;
  double taxaEntrega;

  PedidoDelivery(String codigo, double valorTotal, this.enderecoEntrega, this.taxaEntrega)
      : super(codigo, valorTotal);

  @override
  double valorFinal() => valorTotal + taxaEntrega;

  @override
  void exibirPedido() {
    print('Delivery | Código: $codigo | Valor: R\$ ${valorTotal.toStringAsFixed(2)} | Taxa: R\$ ${taxaEntrega.toStringAsFixed(2)} | Final: R\$ ${valorFinal().toStringAsFixed(2)} | Endereço: $enderecoEntrega');
  }

  @override
  String toString() {
    return 'Delivery $codigo: R\$ ${valorTotal.toStringAsFixed(2)} + R\$ ${taxaEntrega.toStringAsFixed(2)} taxa = R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}