import 'funcionario.dart';

void main() {
  // Criando cada um de um jeito diferente
  Funcionario f1 = Funcionario.estagiario("João");
  Funcionario f2 = Funcionario.pleno("Larissa", 3500.0);
  Funcionario f3 = Funcionario.gerente(nome: "Carlos", bonus: 1500.0);

  // Exibindo
  f1.exibirDados();
  f2.exibirDados();
  f3.exibirDados();
}