class Personagem {
  String nome;
  int vida;
  int ataque;

  // Construtor
  Personagem(this.nome, this.vida, this.ataque) {
    if (nome.isEmpty) {
      throw Exception("Nome não pode ser vazio");
    }
    if (vida <= 0) {
      throw Exception("Vida deve ser maior que 0");
    }
    if (ataque <= 0) {
      throw Exception("Ataque deve ser maior que 0");
    }
  }

  // Método atacar
  void atacar(Personagem inimigo) {
    if (!estaVivo()) {
      print("$nome não pode atacar, está sem vida.");
      return;
    }

    if (!inimigo.estaVivo()) {
      print("${inimigo.nome} já está derrotado.");
      return;
    }

    inimigo.vida -= ataque;

    // Evita vida negativa
    if (inimigo.vida < 0) {
      inimigo.vida = 0;
    }

    print("$nome atacou ${inimigo.nome} causando $ataque de dano!");
  }

  // Exibir status
  void exibirStatus() {
    print("Nome: $nome | Vida: $vida | Ataque: $ataque");
  }

  // Verificar se está vivo
  bool estaVivo() {
    return vida > 0;
  }
}