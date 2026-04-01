class Relogio {
  int _hora;
  int _minuto;
  int _segundo;

  Relogio(this._hora, this._minuto, this._segundo) {
    if (_hora < 0 || _hora > 23) {
      print("Erro: A hora deve estar entre 0 e 23!");
    }
    if (_minuto < 0 || _minuto > 59) {
      print("Erro: O minuto deve estar entre 0 e 59!");
    }
    if (_segundo < 0 || _segundo > 59) {
      print("Erro: O segundo deve estar entre 0 e 59!");
    }
  }

  int get hora => _hora;
  int get minuto => _minuto;
  int get segundo => _segundo;

  void exibirHorario() {
    String horaFormatada    = _hora.toString().padLeft(2, '0');
    String minutoFormatado  = _minuto.toString().padLeft(2, '0');
    String segundoFormatado = _segundo.toString().padLeft(2, '0');

    print("$horaFormatada:$minutoFormatado:$segundoFormatado");
  }
}