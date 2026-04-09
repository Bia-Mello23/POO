class Vilao {
  String _nome;
  String _vida = 500;

  Vilao(this._nome);

  void sofrerDano(int dano) {
    _vida -= dano; //- é um operador de subtração, ou seja, o vilão sofre o dano recebido e perde vida.
    if (_vida <= 0) {
      _vida = 0; //se a vida do vilão for menor ou igual a 0, ele morre e sua vida é igual a 0.
    }
  
  }

}

bool get estaVivo {
  return _vida > 0; //estaVivo é um método que retorna um booleano, ou seja, retorna true se a vida do herói for maior que 0 e false caso contrário.
}