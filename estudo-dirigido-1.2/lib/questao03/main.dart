import 'aluno.dart';

void main() {
  // Exemplo de instância usando os nomes dos parâmetros
  var aluno1 = Aluno(
    nome: "Serjão",
    ra: "2026001",
    notaFinal: 3.5,
  );

  var aluno2 = Aluno(
    ra: "2026002",
    nome: "Martha",
    notaFinal: 8.5,
  );

  aluno1.exibirBoletim();
  aluno2.exibirBoletim();
}
  