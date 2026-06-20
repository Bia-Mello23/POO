import 'Guerreiro.dart';
import 'Arqueiro.dart';
import 'Mago.dart';
import 'Goblin.dart';
import 'Dragao.dart';

void main() {
  Guerreiro thoran =
      Guerreiro("Thoran", 100, 10, 20, "Armadura de Ferro");

  Arqueiro lia =
      Arqueiro("Lia", 80, 8, 15, 5);

  Mago merlin =
      Mago("Merlin", 70, 12, 12, 30);

  Goblin gob =
      Goblin("Gob", 50, 3, 100, 25);

  Dragao ignis =
      Dragao("Ignis", 150, 20, 1000, 30);

  print("=== COMBATE ===");

  thoran.atacar(gob);
  lia.atacar(gob);
  merlin.lancarMagia(ignis);
  ignis.soltarFogo(thoran);

  print("\n=== STATUS ===");

  thoran.exibirStatus();
  lia.exibirStatus();
  merlin.exibirStatus();
  gob.exibirStatus();
  ignis.exibirStatus();

  print("\n=== RECOMPENSAS ===");

  if (!gob.estaVivo()) {
    gob.exibirRecompensa();
  }

  if (!ignis.estaVivo()) {
    ignis.exibirRecompensa();
  }
}