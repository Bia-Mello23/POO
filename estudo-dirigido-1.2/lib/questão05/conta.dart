class Conta {
  //atributos
  String _numero;
  String _titular; //variaveis privadas
  double _saldo;

  //construtor nomeado: bancaria (inicia saldo com zero)
  Conta.bancaria(this._numero, this._titular) : _saldo = 0.0;

  //construtor nomeado: vip (inicia com saldo informado)
  Conta.vip(this._numero, this._titular, double saldoInicial) : _saldo = saldoInicial;

  //método para depositar
  void depositar(double valor) { //garantir que o valor seja positivo
    if (valor > 0) {
      _saldo += valor;
      print('Depósito de R\$ ${valor.toStringAsFixed(2)} realizado.');
    }
  }

  //método para sacar
  void sacar(double valor) { //garantir que o valor seja positivo e que o cliente tenha saldo suficiente
    if (valor > 0 && valor <= _saldo) { //evita que a conta fique negativa sem autorizacao
      _saldo -= valor;
      print('Saque de R\$ ${valor.toStringAsFixed(2)} realizado.');
    } else {
      print('Saldo insuficiente ou valor de saque inválido.');
    }
  }

  //método para exibir resumo
  void exibirResumo() {
    print('--- Resumo da Conta ---');
    print('Titular: $_titular');
    print('Número: $_numero');
    print('Saldo Atual: R\$ ${_saldo.toStringAsFixed(2)}');
    print('-----------------------');
  }
}