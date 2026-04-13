import 'cofrinho.dart';
//foquei em mostrar o ciclo de vida do objeto:
void main() {
  //Instanciando o objeto: Criamos o cofre começando com R$ 0.0
  Cofrinho meuCofre = Cofrinho(0.0);

  //Fazendo vários depósitos
  meuCofre.depositar(10.50);
  meuCofre.depositar(50.00); //método depositar 3 vezes para acumular valores
  meuCofre.depositar(5.25);

  //Mostrando o saldo atual
  print("Saldo atual no cofrinho: R\$ ${meuCofre.saldo}"); //Exibir o saldo parcial antes de finalizar o processo

  //Quebrando o cofrinho para pegar o dinheiro 
  meuCofre.quebrar(); //acionar método que gera o relatório e limpa os dados
}