import 'pedido.dart';
import 'processavel.dart';

class PedidoExpress extends Pedido implements Processavel {
  double taxaUrgencia;

  PedidoExpress(String codigo, double valorTotal, this.taxaUrgencia)
      : super(codigo, valorTotal);

  @override
  double valorFinal() => valorTotal + taxaUrgencia;

  @override
  void exibirPedido() {
    print('Express | Código: $codigo | Valor: R\$ ${valorTotal.toStringAsFixed(2)} | Taxa urgência: R\$ ${taxaUrgencia.toStringAsFixed(2)} | Final: R\$ ${valorFinal().toStringAsFixed(2)}');
  }

  @override
  String toString() {
    return 'Express $codigo: R\$ ${valorTotal.toStringAsFixed(2)} + R\$ ${taxaUrgencia.toStringAsFixed(2)} urgência = R\$ ${valorFinal().toStringAsFixed(2)}';
  }
}