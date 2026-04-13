import 'pessoa.dart'; //pessoa que eu criei
import '../questao08/endereco.dart'; //planta da criação da Bea

//No main, instanciei as três pessoas
void main() { //importo as classes necessárias > Dart saiba o que é uma Pessoa e o que é um Endereco

  //Criando a 1ª Pessoa
  Endereco end1 = Endereco("Rua das Flores", 100, "Centro", "Curitiba", "PR", 80000000); //reservando um espaço na memória com todos os detalhes da rua, número e CEP
  Pessoa p1 = Pessoa("Denyse", 20, "111.222.333-44", end1); //end1 para o construtor da Pessoa

  //Criando a 2ª Pessoa
  Endereco end2 = Endereco("Av. Sete de Setembro", 500, "Batel", "Curitiba", "PR", 80230000);
  Pessoa p2 = Pessoa("Larissa", 21, "555.666.777-88", end2);

  //Criando a 3ª Pessoa
  Endereco end3 = Endereco("Rua XV de Novembro", 10, "Centro", "Curitiba", "PR", 80020000);
  Pessoa p3 = Pessoa("Beatriz", 22, "999.888.777-66", end3);

  //chamo o método exibirPessoa() para cada uma das 3 instâncias para exibir os dados completos
  p1.exibirPessoa();
  p2.exibirPessoa();
  p3.exibirPessoa();
}