class Personagem {
  String _nome;
  int _vida;
  int _energia;

  Personagem(this._nome, this._vida, this._energia);

  // Método para alterar a vida (usado no teste)
  void setVida(int novaVida) {
    _vida = novaVida;
  }

  void exibirEstado() {
    print("$_nome | Vida: $_vida | Energia: $_energia");
  }
}