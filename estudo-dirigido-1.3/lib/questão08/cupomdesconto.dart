class CupomDesconto {
  //Atributos privados
  String _codigo;
  double _percentual;
  bool _ativo;

  //construtor para inicializar os atributos
  CupomDesconto(this._codigo, this._percentual, this._ativo);

  //getters para todos os atributos
  String get codigo => _codigo; //Arrow Function (=>)
  double get percentual => _percentual;
  bool get ativo => _ativo;

  //setters com as validações exigidas 
  set codigo(String valor) {
    if (valor.isNotEmpty) { // O código não pode ser vazio
      _codigo = valor;
    }
  }

  set percentual(double valor) {
    if (valor >= 0 && valor <= 100) { //Deve estar entre 0 e 100 //setter do percentual, eu utilizei o operador lógico &&
      _percentual = valor;                                       //para garantir q o valor do desconto seja realista
    }                                                             //nem menor que 0, nem maior que 100%
  }

  //métodos obrigatórios da Questão 8 
  void ativar() => _ativo = true;
  void desativar() => _ativo = false;

  //calcula quanto de desconto será subtraído de um valor 
  double calcularDesconto(double valor) { //o comportamento do objeto depende do seu estado interno
    if (_ativo) {                           
      return valor * (_percentual / 100);
    }
    return 0.0; //se o cupom estiver inativo, o desconto é zero
  }

  void exibirCupom() {
    print("Cupom: $_codigo | Desconto: $_percentual% | Ativo: $_ativo");
  }
}