import 'personagem.dart';

void main() {
  Personagem p1 = Personagem("Guerreiro", 100, 50);
  
  print(" ANTES da alteração ");
  p1.exibirEstado();  // Guerreiro | Vida: 100 | Energia: 50

  // Atribuindo a mesma referência para p2 (NÃO cria um novo objeto)
  Personagem p2 = p1;

  // Alterando a vida através de p2
  p2.setVida(80);

  print("\n DEPOIS da alteração via p2 ");
  p1.exibirEstado();  // Guerreiro | Vida: 80 | Energia: 50
  p2.exibirEstado();  // Guerreiro | Vida: 80 | Energia: 50


  print("\n a) Por que, ao alterar a segunda variável, a primeira também apresentou a alteração? ");
  print("\n Resposta: Porque ambas as variáveis armazenam a mesma referência (endereço de memória) para o objeto. Não são objetos independentes. ");
  
  print("\n b) Esse comportamento está correto? Explique com base no conceito de referência de objetos em Dart. ");
  print("\n Resposta: Sim, está correto para linguagens orientadas a objetos. Objetos são tipos por referência; variáveis guardam apenas o caminho para o objeto, não o objeto em si. Isso permite compartilhamento eficiente de dados.");


}

 