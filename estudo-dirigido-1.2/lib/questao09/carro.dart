class Carro {
  String _modelo;
  int _quilometragem;

  Carro(this._modelo, this._quilometragem);

  // Getter e Setter para permitir que a oficina altere a quilometragem
  int get quilometragem => _quilometragem;
  set quilometragem(int valor) => _quilometragem = valor;

  void exibir() {
    print("Modelo: $_modelo | KM: $_quilometragem");
  }
}

class Oficina {
  void revisar(Carro carro) {
    // Simula um teste de rodagem aumentando a KM em 50
    carro.quilometragem += 50; 
    print("Realizando revisão e teste de rodagem no ${carro._modelo}");
  }
}