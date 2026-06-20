import 'lista_generica.dart';
import 'ingresso.dart';

void main() {
  ListaGenerica<Calculavel> ingressos = ListaGenerica<Calculavel>();

  Calculavel vip1 = IngressoVip("Show Rock", 200.00, 80.00);
  Calculavel promo1 = IngressoPromocional("Teatro Infantil", 100.00, 20.00);
  Calculavel camarote = IngressoCamarote("Festival Jazz", 300.00, 50.00, "Setor A");
  Calculavel promo2 = IngressoPromocional("Cinema Especial", 60.00, 15.00);
  Calculavel vip2 = IngressoVip("Show Pop", 180.00, 70.00);

  ingressos.adicionar(vip1);
  ingressos.adicionar(promo1);
  ingressos.adicionar(camarote);
  ingressos.adicionar(promo2);
  ingressos.adicionar(vip2);

  print("Lista de Ingressos");
  ingressos.imprimirItens();

  print("\n Cálculo do valor final");
  for (var ingresso in ingressos.obterItens()) {
    print("Valor final: R\$ ${ingresso.valorFinal().toStringAsFixed(2)}");
  }
}
