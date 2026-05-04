import 'ContaCorrente.dart';
import 'ContaPoupanca.dart';

void main() {
  var poupanca = ContaPoupanca("Beatriz", 0);
  poupanca.Depositar(3000);
  poupanca.exibirSaldo();
  poupanca.aplicarRendimento();
  poupanca.exibirSaldo();

  print("-------------");

  var corrente = ContaCorrente("Beatriz", 0);
  corrente.Depositar(3000);
  corrente.exibirSaldo();
  corrente.aplicarRendimento();
  corrente.exibirSaldo();
}