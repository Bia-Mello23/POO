import 'aluno.dart';

void main() {
  Aluno a1  = Aluno("Larissa",      8.0, 9.0);
  Aluno a2  = Aluno("Bruno",    5.0, 4.0);
  Aluno a3  = Aluno("Carlos",   7.5, 6.5);
  Aluno a4  = Aluno("Denyse",    3.0, 4.5);
  Aluno a5  = Aluno("Eduardo",  9.5, 10.0);
  Aluno a6  = Aluno("Juliana", 6.0, 6.0);
  Aluno a7  = Aluno("Gabriel",  2.0, 3.0);
  Aluno a8  = Aluno("Helena",   8.5, 7.0);
  Aluno a9  = Aluno("Igor",     4.0, 5.5);
  Aluno a10 = Aluno("Beatriz",    10.0, 9.5);

  print("Nome do A1: ${a1.nome}");
  print("Nota1 do A1: ${a1.nota1}");
  print("Nota2 do A1: ${a1.nota2}");

  print("\n Boletins ");

  print("\n Aluno 1 ");
  a1.exibirBoletim();

  print("\n Aluno 2 ");
  a2.exibirBoletim();

  print("\n Aluno 3 ");
  a3.exibirBoletim();

  print("\n Aluno 4 ");
  a4.exibirBoletim();

  print("\n Aluno 5 ");
  a5.exibirBoletim();

  print("\n Aluno 6 ");
  a6.exibirBoletim();

  print("\n Aluno 7 ");
  a7.exibirBoletim();

  print("\n Aluno 8 ");
  a8.exibirBoletim();

  print("\n Aluno 9 ");
  a9.exibirBoletim();

  print("\n Aluno 10 ");
  a10.exibirBoletim();
}