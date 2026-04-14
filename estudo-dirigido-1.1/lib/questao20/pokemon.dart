class Pokemon {
  int _numero;
  String _nome;
  String _tipo;
  int _nivel;
  int _hp;

  Pokemon(this._numero, this._nome, this._tipo, this._nivel, this._hp) {
    if (_nome.isEmpty) {
      print("Erro: O nome não pode ser vazio!");
    }
    if (_tipo.isEmpty) {
      print("Erro: O tipo não pode ser vazio!");
    }
    if (_nivel < 1 || _nivel > 100) {
      print("Erro: O nível deve estar entre 1 e 100!");
    }
    if (_hp <= 0) {
      print("Erro: O HP deve ser maior que 0!");
    }
  }

  int get numero => _numero;
  String get nome => _nome;
  String get tipo => _tipo;
  int get nivel => _nivel;
  int get hp => _hp;

  void exibirPokemon() {
    print("  #$_numero $_nome");
    print("  Tipo: $_tipo");
    print("  Nível: $_nivel");
    print("  HP: $_hp");
  }
}