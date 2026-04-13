import 'carro.dart';

void main() {
  Carro meuCarro = Carro('Celta', 15000);
  Oficina oficina = Oficina();

  print('Antes da revisão:');
  meuCarro.exibir();

  // Enviando o objeto para o método
  oficina.revisar(meuCarro);

  print('\nDepois da revisão:');
  meuCarro.exibir();
}