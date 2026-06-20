import 'lista_generica.dart';
import 'processavel.dart';
import 'pedido-delivery.dart';
import 'pedido-retirada.dart';
import 'pedido-express.dart';
import 'pedido.dart';


void main() {
  ListaGenerica<Processavel> pedidos = ListaGenerica<Processavel>();

  pedidos.adicionar(PedidoDelivery('1001', 120.00, 'Rua Euclides Cunha, 1529', 15.00));
  pedidos.adicionar(PedidoRetirada('1002', 80.00, 'Beatriz'));
  pedidos.adicionar(PedidoExpress('1003', 200.00, 40.00));
  pedidos.adicionar(PedidoDelivery('1004', 150.00, 'Rua XV de Novembro, 250', 20.00));
  pedidos.adicionar(PedidoRetirada('1005', 60.00, 'Denyse'));

  print('--- Lista de pedidos  ---');
  pedidos.imprimirItens();

  print('\n--- Valor final de cada pedido ---');
  for (var p in pedidos.obterItens()) {
    print('Pedido: ${p.runtimeType} | Final: R\$ ${p.valorFinal().toStringAsFixed(2)}');
  }

  print('\n--- Exibição detalhada ---');
  for (var p in pedidos.obterItens()) {
    p.exibirPedido();
  }
}