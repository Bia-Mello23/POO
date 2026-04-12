class Caixa {
  int _valor;

  Caixa(this._valor);

  void setValor(int novoValor) {
    _valor = novoValor;
  }

  int getValor() => _valor;

  void exibir() {
    print("Caixa com valor: $_valor");
  }
}