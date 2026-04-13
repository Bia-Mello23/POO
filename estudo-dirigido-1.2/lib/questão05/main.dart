import 'conta.dart';

void main() {
  // 1. Criando uma conta bancária comum (saldo inicial zero)
  var contaComum = Conta.bancaria('123-X', 'Denyse'); //passa apenas 2 valores (numero e titular) = 0.0
  contaComum.exibirResumo();
  contaComum.depositar(150.0); //testa as regras
  contaComum.exibirResumo();

  print('\n'); // Apenas para pular linha no console

  //Criando uma conta VIP (saldo inicial informado) - o 3 valor entra direto como saldo inicial da conta
  var contaVip = Conta.vip('999-V', 'João Silva', 5000.0); //passa de 3 valores (numero, titular e valor)
  contaVip.exibirResumo();
  contaVip.sacar(1200.0);  //testa, verifica se tem saldo antes de diminuir o valor
  contaVip.exibirResumo();
}