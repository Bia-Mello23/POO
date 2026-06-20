import 'Pessoa.dart';
import 'Apresentavel.dart';

class Professor extends Pessoa implements Apresentavel {
  String tipo;
  String disciplina;
  double salario;

  Professor (String nome, int idade, this.tipo, this.disciplina, this.salario) :super (nome, idade);

  @override
  String toString(){
    return ('Nome: $nome | Idade: $idade | Tipo: $tipo | Disciplina: $disciplina | Salario: $salario');
  }

  @override
  void exibirDados() {
    print('O(a) $nome, tem $idade anos é $tipo e da aula de $disciplina. Recebe $salario reais por mês.');
  }
}