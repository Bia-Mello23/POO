import 'Combatente.dart';
import 'Magico.dart';
import 'Personagem.dart';

class Mago extends Combatente implements Magico {
  int mana;

  Mago(
    String nome, int vida, int nivel, int forca, this.mana) :super (nome, vida, nivel, forca);

  @override
  void atacar(Personagem alvo) {
    alvo.receberDano(forca);

    print("$nome atacou ${alvo.nome}.");
  }

  @override
  void lancarMagia(Personagem alvo) {
    if (mana < 10) {
      print("$nome não possui mana suficiente.");
      return;
    }

    int dano = forca + 15;

    mana -= 10;

    alvo.receberDano(dano);

    print("$nome lançou magia em ${alvo.nome} causando $dano de dano.");
  }

  @override
  void exibirStatus() {
    print("Mago: $nome | Vida: $vida | Nível: $nivel | Mana: $mana");
  }
}