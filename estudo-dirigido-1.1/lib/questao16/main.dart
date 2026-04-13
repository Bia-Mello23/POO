import 'personagem.dart';

void main() {
  // Criando 2 personagens
  Personagem p1 = Personagem("Fada", 50, 10);
  Personagem p2 = Personagem("Sapo", 30, 7);

  // Simulando combate
  while (p1.estaVivo() && p2.estaVivo()) {
    p1.atacar(p2);
    p2.exibirStatus();

    if (p2.estaVivo()) {
      p2.atacar(p1);
      p1.exibirStatus();
    }

  }

  // Resultado final
  print("Resultado final:");
  p1.exibirStatus();
  p2.exibirStatus();
}