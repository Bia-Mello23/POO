import 'semaforo.dart';

void main() {
  Semaforo semaforo = Semaforo("vermelho", 5);

  print("Cor inicial: ${semaforo.corAtual}");
  print("Tempo inicial: ${semaforo.tempoRestante}");

  print("\n Estado Inicial ");
  semaforo.exibirEstado();

  print("\n Simulando o Semáforo ");
  semaforo.reduzirTempo();
  semaforo.reduzirTempo();
  semaforo.reduzirTempo();
  semaforo.reduzirTempo();
  semaforo.reduzirTempo(); 

  semaforo.reduzirTempo();
  semaforo.reduzirTempo();
  semaforo.reduzirTempo();
  semaforo.reduzirTempo(); 

  semaforo.reduzirTempo();
  semaforo.reduzirTempo(); 

  print("\n Estado Final ");
  semaforo.exibirEstado();
}