//arquivo da Beatriz para o código reconhecer o tipo 'Endereco'
import '../questao08/endereco.dart';

class Pessoa {
  //Atributos obrigatórios
  String nome;
  int idade;
  String cpf;
  Endereco endereco;//classe Endereco como um atributo
  //A classe Pessoa possui um atributo que é uma instância da classe Endereco

  //Construtor que recebe todos os valores 
  Pessoa(this.nome, this.idade, this.cpf, this.endereco);

  //Método para mostrar os dados 
  //Para exibir os dados, eu utilizei a delegação: o método exibirPessoa
  void exibirPessoa() {
    print("--- Informações da Pessoa ---");
    print("Nome: $nome");
    print("Idade: $idade anos");
    print("CPF: $cpf");  
    
   //chama o método da classe Endereco para mostrar as informações de localização.
    print("Morada:");
    endereco.exibirEndereco(); 
    print("----------------------------");//organização visual
  }
}

//inves de escrever o codigo para mostrar rua,num,cep de novo dentro da classe
//ele da uma ordem para o objeto de endereço