class ContaBancaria { //classe base

 String titular;

 double saldo;



 ContaBancaria(this.titular, this.saldo);



 void depositar(double valor) {

 saldo += valor;

 }



 void sacar(double valor) {

 if (valor <= saldo) {

saldo -= valor;

 } else {

 print('Saldo insuficiente.');

 }

 }




 @override

 String toString() {

 return 'Titular: $titular | Saldo: R\$ ${saldo.toStringAsFixed(2)} | Tipo: ${runtimeType}';

 }

}



abstract interface class Rentavel {

 void aplicarRendimento();

}



class ContaPoupanca extends ContaBancaria implements Rentavel {

 ContaPoupanca(String titular, double saldo) : super(titular, saldo);



 @override

 void aplicarRendimento() {

 saldo += saldo * 0.01; //1% de rendimento

 }

}



class ContaCorrente extends ContaBancaria implements Rentavel {

 ContaCorrente(String titular, double saldo) : super(titular, saldo);



 @override

 void aplicarRendimento() {

 saldo += saldo * 0.05; //5% de rendimento

 }

}



//Nova classe

class ContaInvestimento extends ContaBancaria implements Rentavel {

 ContaInvestimento(String titular, double saldo) : super(titular, saldo);



 @override

 void aplicarRendimento() {

 saldo += saldo * 0.08; //8% de rendimento

 }

}



 void imprimirItens(List<Rentavel> lista) {

 for (var conta in lista) {

 print(conta); //Chama automaticamente o toString()

 }

}



