import 'contabancaria.dart';
import 'lista_generica.dart';


void main() {

var ana = ContaPoupanca('Ana', 1000.0);

 var bruno = ContaCorrente('Bruno', 1500.0);

 var carla = ContaInvestimento('Carla', 5000.0);

 var diego = ContaPoupanca('Diego', 2500.0);

var elisa = ContaCorrente('Elisa', 800.0);


 List<Rentavel> listaContas = [ana, bruno, carla, diego, elisa];



 print('--- Saldos Antes do Rendimento ---');

 imprimirItens(listaContas);



 for (var conta in listaContas) {

 conta.aplicarRendimento();

 }

 print('\n--- Saldos Após o Rendimento (Atualizados) ---');

 imprimirItens(listaContas);

}