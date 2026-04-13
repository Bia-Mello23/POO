class Cliente {
  String _nome;
  String _email;
  double _saldoCarteira;
  bool _ativo;

  Cliente(this._nome, this._email, this._saldoCarteira, this._ativo);

  String get nome => _nome; //=> é a mesma coisa que { return _nome;, não pode usar em caso de if/else, for,while }
  String get email => _email;
  double get saldoCarteira => _saldoCarteira;
  bool get ativo => _ativo;

  set nome(String novoNome) {
    if (novoNome.trim().isNotEmpty) {
      _nome = novoNome;
    }
  }

  set email(String novoEmail) {
    if (novoEmail.trim().isNotEmpty) {
      _email = novoEmail;
    }
  }

  set saldoCarteira(double novoSaldo) {
    if (novoSaldo >= 0) {
      _saldoCarteira = novoSaldo;
    }
  }

  void ativar() {
    _ativo = true;
  }

  void desativar() {
    _ativo = false;
  }

  void adicionarSaldo(double valor) {
    if (valor > 0) {
      _saldoCarteira += valor;
    }
  }

  void debitarSaldo(double valor) {
    if (valor > 0 && valor <= _saldoCarteira) {
      _saldoCarteira -= valor;
    }
  }

  void exibirCliente() {
    print(" Dados do Cliente ");
    print("Nome: $_nome");
    print("E-mail: $_email");
    print("Saldo na carteira: R\$ ${_saldoCarteira.toStringAsFixed(2)}");
    print("Ativo: ${_ativo ? "Sim" : "Não"}");
      print("=========================");

    
  }
}