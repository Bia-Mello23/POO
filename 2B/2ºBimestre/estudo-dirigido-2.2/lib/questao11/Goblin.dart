import 'inimigo.dart';

class Goblin extends Inimigo {
  int velocidade;

  Goblin(String nome, int vida, int nivel, int recompensa, this.velocidade) :super (nome, vida, nivel, recompensa); 

  @override
  void exibirStatus() {
    print(
        "Goblin: $nome | Vida: $vida | Nível: $nivel | Velocidade: $velocidade");
  }

  @override
  void exibirRecompensa() {
    print("Recompensa: $recompensa moedas");
  }
}