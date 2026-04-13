class Televisao {
  int _canal = 1; 
  int _volume = 10;

  //métodos que o controle vai usar para alterar o estado interno
  void mudarCanal(int valor) {
    _canal += valor;
    if (_canal < 1) _canal = 1; //proteção para não ter canal negativo
    print('Canal atual: $_canal'); //o canal não pode ser menor que 1
  }

  void mudarVolume(int valor) {
    _volume += valor;
    if (_volume < 0) _volume = 0; //o volume não pode ser menor que 0 nem maior que 100
    if (_volume > 100) _volume = 100;
    print('Volume atual: $_volume');
  }
//garantindo que o controle nao estrague o sistema da TV
//tentando colocar um volume, ex: -50.
  void status() {
    print('TV -> Canal: $_canal | Volume: $_volume');
  }
}

class ControleRemoto {
  final Televisao _tv;

  //construtor que recebe o objeto Televisao
  ControleRemoto(this._tv);

  void aumentarVolume() => _tv.mudarVolume(1); 
  void diminuirVolume() => _tv.mudarVolume(-1);
  void proximoCanal() => _tv.mudarCanal(1);  //a TV é responsável por validar se o canal ou volume pode ser alterado
  void canalAnterior() => _tv.mudarCanal(-1);  //regra de negocio
  
}                                                