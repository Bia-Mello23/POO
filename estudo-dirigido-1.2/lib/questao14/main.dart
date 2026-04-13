import 'banco.dart';

void main() {
  //criado UMA única conta
  Conta conta = Conta('Fernanda', 1000.0); //apenas uma conta existe na memória

  //criado DOIS gerentes diferentes
  Gerente g1 = Gerente('Marcos');  
  Gerente g2 = Gerente('Patrícia'); //recebem a mesma variável CONTA
//gerentes recebem o endereço da conta, permitindo que ambos alterem o saldo original
  print('Estado inicial:');
  conta.exibir();

  //gerente 1 mexe na conta
  g1.depositar(conta, 200.0);
  conta.exibir();

  //gerente 2 mexe na MESMA conta
  g2.sacar(conta, 150.0);
  conta.exibir(); //mostra o saldo líquido após a ação de todos os gerentes envolvidos
}