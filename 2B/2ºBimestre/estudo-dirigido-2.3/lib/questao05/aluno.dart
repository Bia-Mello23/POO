import 'pessoa.dart';
import 'apresentavel.dart';

class Aluno extends Pessoa implements Apresentavel {
  String matricula;
  String curso;

  Aluno(String nome, int idade, this.matricula, this.curso)
      : super(nome, idade);

  @override
  void exibirDados() {
    print('Aluno: $nome, $idade anos | Matrícula: $matricula | Curso: $curso');
  }

  @override
  String toString() {
    return 'Aluno: $nome, $idade anos, $matricula, $curso';
  }
}