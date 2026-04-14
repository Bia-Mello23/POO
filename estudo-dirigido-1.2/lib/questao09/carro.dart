class Carro {
  String _modelo;
  int _quilometragem;

  Carro(this._modelo, this._quilometragem);

  // Getter e Setter para quilometragem para permitir a alteração pela Oficina
  String get modelo => _modelo;
  int get quilometragem => _quilometragem;
  set quilometragem(int valor) => _quilometragem = valor;

  void exibir() {
    print('Modelo: $_modelo | KM: $_quilometragem');
  }
}