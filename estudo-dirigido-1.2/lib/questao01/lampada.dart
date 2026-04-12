class Lampada {
  //cria atributos privados pra acessar na main depois
  bool _ligada = false;
  int _intensidade = 50;

  //inicializando a lampada (inicia desligada e com intensidade 50)
  //construtor sem parâmetros é utilizado para iniciar uma classe com valor padrão
  Lampada() {}
  //ligar a lampada
  void ligar() {
    _ligada = true;
    print("Lâmpada ligada");
  }

  void desligar() {
    _ligada = false;
    print("Lâmpada desligada.");
  }

  void aumentar() {
    if (_intensidade + 10 <= 100) {
      _intensidade += 10;
    } else {
      _intensidade = 100;
    }
    print("Intensidade aumentada para $_intensidade");
  }

  void diminuir() {
    if (_intensidade - 10 >= 0) {
      _intensidade -= 10;
    } else {
      _intensidade = 0;
    }
    print("Intensidade diminuída para $_intensidade");
  }

  void exibirEstado() {
    String estado = _ligada ? "LIGADA" : "DESLIGADA";
    print(" LÂMPADA ");
    print("Estado: $estado");
    print("Intensidade: $_intensidade");
    print("---------------");
  }
}
