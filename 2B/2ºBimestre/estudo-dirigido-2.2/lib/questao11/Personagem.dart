abstract class Personagem {
  String nome;
  int vida;
  int nivel;

  Personagem (this.nome, this.vida, this.nivel) {

    if (nome == "") {
      nome = "nome inválido!";
    }

    if (vida < 0) {
      vida = 0;
    }

    if (nivel < 1) {
      nivel = 1;
    }
  }

  void receberDano (int dano) {
    vida -= dano;

    if (vida < 0) {
      vida = 0;
    }
}

bool estaVivo(){
  return vida > 0;
}

void exibirStatus();
}