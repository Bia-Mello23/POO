import 'Pessoa.dart';
import 'Apresentavel.dart';

class Aluno extends Pessoa implements Apresentavel {
    String tipo;
    String matricula;
    String curso;

    Aluno (String nome, int idade, this.tipo, this.matricula, this.curso) :super (nome, idade);

  @override
  String toString() {
    return('Nome: $nome | Idade:$idade | Tipo: $tipo | Matrícula:$matricula | Curso:$curso');
  }

  @override
  void exibirDados() {
    print('O aluno(a) $nome, tem $idade anos e possui a matrícula $matricula, é $tipo no curso $curso.');
  }

}