import 'televisao.dart';

void main() {
  //criar o objeto Televisao
  var minhaTV = Televisao();

//passa minhaTV para o construtor do ControleRemoto, dando o endereço dela

  //criar o Controle Remoto associado àquela TV específica
  var controle = ControleRemoto(minhaTV);
//objeto controle sabe exatamente em qual lugar da memória está a minhaTV
  print('--- Testando Controle Remoto ---');
  minhaTV.status(); // Estado inicial

  controle.aumentarVolume(); //chama o método no controle
  controle.aumentarVolume();
  controle.proximoCanal();
  
  print('--- Estado Final ---');
  minhaTV.status(); //mostra o resultado dessa interação
}