class Endereco {
  String _rua;
  int _numero;
  String _bairro;
  String _cidade;
  String _estado;
  int _cep;

  Endereco(this._rua, this._numero, this._bairro, 
           this._cidade, this._estado, this._cep) {
    if (_rua.isEmpty) {
      print("Erro: A rua não pode ser vazia!");
    }
    if (_numero <= 0) {
      print("Erro: O número deve ser maior que 0!");
    }
    if (_bairro.isEmpty) {
      print("Erro: O bairro não pode ser vazio!");
    }
    if (_cidade.isEmpty) {
      print("Erro: A cidade não pode ser vazia!");
    }
    if (_estado.isEmpty) {
      print("Erro: O estado não pode ser vazio!");
    }
    if (_cep <= 0) {
      print("Erro: O CEP não pode ser vazio!");
    }
  }

  String get rua => _rua;
  int get numero => _numero;
  String get bairro => _bairro;
  String get cidade => _cidade;
  String get estado => _estado;
  int get cep => _cep;

  String _formatarCep() {
    String cepCompleto = _cep.toString().padLeft(8, '0');
    String parte1 = cepCompleto.substring(0, 5);
    String parte2 = cepCompleto.substring(5);
    return "$parte1-$parte2";
  }

  void exibirEndereco() {
    print("Rua: $_rua, $_numero");
    print("Bairro: $_bairro");
    print("Cidade: $_cidade");
    print("Estado: $_estado");
    print("CEP: ${_formatarCep()}");
  }
}