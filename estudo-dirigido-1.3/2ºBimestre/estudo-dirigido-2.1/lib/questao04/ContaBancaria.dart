class ContaBancaria {
  String titular;
  double saldo = 0;

  ContaBancaria(this.titular, this.saldo);

  void Depositar(double valor){
    saldo+=valor;
    print ("Depósito de R\$ $valor realizado");
  }

  void Sacar(double valor){
    if (valor <=saldo) {
      saldo -=valor;
      print ("Saque de R\$ $valor realizado");
    } else {
      print ("saldo insuficiente");
    }
  }

  void exibirSaldo(){
    print ("Titular: $titular \nSaldo: $saldo");
  }
}