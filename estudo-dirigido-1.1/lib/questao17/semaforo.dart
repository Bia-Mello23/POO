class Semaforo {
  String _corAtual;
  int _tempoRestante;

  Semaforo(this._corAtual, this._tempoRestante) {
    if (_corAtual != "vermelho" && _corAtual != "verde" && _corAtual != "amarelo") {
      print("Erro: A cor deve ser vermelho, verde ou amarelo!");
    }
    if (_tempoRestante <= 0) {
      print("Erro: O tempo deve ser maior que 0!");
    }
  }

  // ✅ GETTERS
  String get corAtual => _corAtual;
  int get tempoRestante => _tempoRestante;

  String _emoji() {
    if (_corAtual == "vermelho") return "vermelho";
    if (_corAtual == "verde")    return "verde";
    return "amarelo";
  }

  int _tempoDaCor(String cor) {
    if (cor == "vermelho") return 5;
    if (cor == "verde")    return 4;
    return 2;
  }

  void trocarCor() {
    if (_corAtual == "vermelho") {
      _corAtual = "verde";
    } else if (_corAtual == "verde") {
      _corAtual = "amarelo";
    } else {
      _corAtual = "vermelho";
    }
    _tempoRestante = _tempoDaCor(_corAtual);
    print("Cor trocada para: ${_emoji()} $_corAtual (tempo: $_tempoRestante)");
  }

void reduzirTempo() {
    _tempoRestante--;
    print("Tempo restante: $_tempoRestante");
    if (_tempoRestante == 0) {
      trocarCor();
    }
  }

  void exibirEstado() {
    print("Cor atual: ${_emoji()} $_corAtual");
    print("Tempo restante: $_tempoRestante");
  }
}