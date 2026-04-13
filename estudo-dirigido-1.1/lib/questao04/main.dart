import 'lampada.dart';

void main() {
  Lampada lampada = Lampada();

  // Simulação de uso
  for (int i = 0; i < 6; i++) {
    print("\nTentativa ${i + 1}:");
    lampada.ligar();
    lampada.exibirEstado();
    lampada.desligar();
  }
}