import 'Combatente.dart';
import 'Personagem.dart';

class Guerreiro extends Combatente {
  String armadura;

  Guerreiro ( String nome, int vida, int nivel, int forca, this.armadura) :super (nome, vida, nivel, forca);
  
  @override
  void atacar (Personagem alvo) {
    alvo.receberDano(forca);

    print ("$nome atacou ${alvo.nome} causando $forca de dano");
  }

  void ataquePesado(Personagem alvo) {
    int dano = forca * 2;

    alvo.receberDano(dano);

    print ("$nome usou ataque pesado e causou $dano de dano");
  }

  @override
  void exibirStatus() {
    print ("Guerreiro $nome | Vida: $vida | Nível: $nivel | Armadura: $armadura");
  }
}