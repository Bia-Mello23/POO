class Conta {
  String _titular;
  double _saldo;

  Conta(this._titular, this._saldo);

  //métodos simples para a conta
  void depositar(double valor) { //double: precisão financeira, saldo e valores de deposito/saque
    _saldo += valor;
  }

  void sacar(double valor) {
    _saldo -= valor;
  }

  void exibir() {
    print('Titular: $_titular | Saldo: R\$ ${_saldo.toStringAsFixed(2)}');
  }
}

class Gerente {
  String nome; //o gerente opera no objeto original
//qualquer alteração feita por um gerente é vista por todos que possuem acesso àquela conta
  Gerente(this.nome);

  //o gerente recebe uma Conta como parâmetro para operar nela
  void depositar(Conta conta, double valor) {
    print('Gerente $nome depositando...');
    conta.depositar(valor);
  }

  void sacar(Conta conta, double valor) {
    print('Gerente $nome sacando...');
    conta.sacar(valor);
  }
}