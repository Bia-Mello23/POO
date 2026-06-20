import 'pedido.dart';
import 'processavel.dart';

class PedidoRetirada extends Pedido implements Processavel {
  String nomeCliente;

  PedidoRetirada(String codigo, double valorTotal, this.nomeCliente)
      : super(codigo, valorTotal);

  @override
  double valorFinal() => valorTotal; // sem taxa extra

  @override
  void exibirPedido() {
    print('Retirada | Código: $codigo | Valor: R\$ ${valorTotal.toStringAsFixed(2)} | Cliente: $nomeCliente');
  }

  @override
  String toString() {
    return 'Retirada $codigo: R\$ ${valorTotal.toStringAsFixed(2)} para $nomeCliente';
  }
}