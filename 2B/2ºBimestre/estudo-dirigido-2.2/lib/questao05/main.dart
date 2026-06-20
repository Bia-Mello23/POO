import 'aluno.dart';
import 'professor.dart';

void main() {
  Aluno aluno = Aluno("Beatriz", 25, "20191001", "ADS");
  Professor prof = Professor("Ana", 38, "POO", 5000);

  aluno.exibirDados();
  print("");
  prof.exibirDados();
}