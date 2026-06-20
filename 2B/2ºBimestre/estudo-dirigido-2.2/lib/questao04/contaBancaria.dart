class ContaBancaria {
String titular;
 double saldo;

 ContaBancaria(this.titular, this.saldo);

 void depositar(double valor) {
 saldo += valor;
 print('Depósito de R\$ $valor realizado.');
 }

 void sacar(double valor) {
 if (valor <= saldo) {
 saldo -= valor;
 print('Saque de R\$ $valor realizado.');
 } else {
 print('Saldo insuficiente para saque.');
 }
 }

 void exibirSaldo() {
 print('Titular: $titular | Saldo Atual: R\$ ${saldo.toStringAsFixed(2)}');
 }
}

abstract interface class Rentavel {
 void aplicarRendimento();
}

class ContaPoupanca extends ContaBancaria implements Rentavel {
 ContaPoupanca(String titular, double saldo) : super(titular, saldo);

 @override
 void aplicarRendimento() {
 double rendimento = saldo * 0.01; // 1%
 saldo += rendimento;
 print('Rendimento de 1% aplicado à Poupança.');
 }
}

class ContaCorrente extends ContaBancaria implements Rentavel {
 ContaCorrente(String titular, double saldo) : super(titular, saldo);

 @override
 void aplicarRendimento() {
 double rendimento = saldo * 0.05; // 5%
 saldo += rendimento;
 print('Rendimento de 5% aplicado à Conta Corrente.');
 }
}

void main() {
 var poupanca = ContaPoupanca('Denyse', 1000.0);
 var corrente = ContaCorrente('Beatriz', 1000.0);

 print('--- Operações na Poupança ---');
 poupanca.depositar(500.0);
 poupanca.aplicarRendimento();
 poupanca.exibirSaldo();

 print('\n--- Operações na Conta Corrente ---');
 corrente.depositar(500.0);
 corrente.aplicarRendimento();
 corrente.exibirSaldo();
}