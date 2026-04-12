class Carteira {
  double _saldo;

  Carteira(this._saldo);

  // Getter para leitura do saldo
  double get saldo => _saldo;

  // Setter para alterar o saldo 
  set saldo(double novoSaldo) => _saldo = novoSaldo;
}
