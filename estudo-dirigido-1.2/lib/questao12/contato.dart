class Contato {
  String _nome;
  String _telefone;

  Contato(this._nome, this._telefone);

  // Comparar na hora de remover
  String get nome {
    return _nome;
  }

  void exibir() {
    print("Nome: $_nome - Tel: $_telefone");
  }
}
