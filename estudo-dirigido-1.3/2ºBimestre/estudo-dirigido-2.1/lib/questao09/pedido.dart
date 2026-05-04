class Pedido {
 int codigo;
 double valorTotal;



 Pedido(this.codigo, this.valorTotal);

 void exibirPedido() {
 print('Código do Pedido: $codigo');
 print('Valor dos Itens: R\$ $valorTotal');
 }
}



class PedidoDelivery extends Pedido {
 String enderecoEntrega;
 double taxaEntrega;



 PedidoDelivery(int codigo, double valorTotal, this.enderecoEntrega, this.taxaEntrega) : super(codigo, valorTotal);
 double calcularValorFinal() {
 return valorTotal + taxaEntrega;
 }



 @override
 void exibirPedido() {
 super.exibirPedido();
 print('Endereço de Entrega: $enderecoEntrega');
 print('Taxa de Entrega: R\$ $taxaEntrega');
 print('--- TOTAL A PAGAR: R\$ ${calcularValorFinal()} ---');
 }
}



void main() {
 var meuPedido = PedidoDelivery(77,50.0, 'Rua Constelação, 123', 7.50);
 meuPedido.exibirPedido();
}