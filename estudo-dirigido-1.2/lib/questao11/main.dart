import 'cliente.dart';

void main() {
  // Criando o original
  var c1 = Cliente('Marina', Endereco('Rua A', 10, 'Curitiba'));
  
  //criando a cópia
  var c2 = Cliente.copia(c1);
  //mudando a rua APENAS na cópia (c2)
  //como o construtor .copia criou um NOVO Endereco, o c1 não será afetado
  c2.exibir(); //vai mostrar Rua A antes de mudar
  //print e exibir() servem para mostrar o "Antes" e o "Depois"
  //para testar a independência:
  print('--- Alterando o endereço do cliente 2 ---');
}