import 'Combatente.dart';
import 'Personagem.dart';

class Arqueiro extends Combatente {
  int flechas;

  Arqueiro (String nome, int vida, int nivel, int forca, this.flechas) :super (nome, vida, nivel, forca);

  @override
  void atacar (Personagem alvo) {
    if (flechas <= 0) {
      print("$nome não possui mais flechas");
      return;
    }

    flechas --;

    alvo.receberDano(forca);

    print("$nome acertou uma flecha em ${alvo.nome}");
  }

    @override
    void exibirStatus() {
      print("Arqueiro $nome | Vida: $vida | Nível: $nivel | Flechas: $flechas");
    }
}