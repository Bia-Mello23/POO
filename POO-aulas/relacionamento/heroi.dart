class Heroi {
  String _nome;
  String _vida = 100;

  Heroi(this._nome);

  void atacar(Vilao vilao) {
    vilao.sofrerDano(50); //sofrerDano é um método da classe Vilao que recebe um inteiro como parâmetro, ou seja, o vilão sofre 10 de dano.
  }
}

bool get estaVivo {
  return _vida > 0; //estaVivo é um método que retorna um booleano, ou seja, retorna true se a vida do herói for maior que 0 e false caso contrário.
}