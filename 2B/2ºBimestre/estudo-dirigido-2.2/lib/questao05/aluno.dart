import 'pessoa.dart';

class Aluno extends Pessoa {
  String matricula;
  String curso;

  Aluno(String nome, int idade, this.matricula, this.curso)
      : super(nome, idade);

  @override
  void exibirDados() {
    print("Aluno");
    print("Nome: $nome | Idade: $idade");
    print("Matrícula: $matricula | Curso: $curso");
  }
}