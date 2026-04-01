import 'relogio.dart';

void main() {
  Relogio r1 = Relogio(8, 5, 3);
  Relogio r2 = Relogio(14, 30, 45);
  Relogio r3 = Relogio(23, 59, 59);

  print("Hora do R1: ${r1.hora}");
  print("Minuto do R1: ${r1.minuto}");
  print("Segundo do R1: ${r1.segundo}");

  print("\n Horários");
  r1.exibirHorario();
  r2.exibirHorario();
  r3.exibirHorario();
}