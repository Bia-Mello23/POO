import 'LivroDigital.dart';
import 'LivroFisico.dart';

void main() {
  Livrofisico fisico = Livrofisico (360, "Larissa Qui", "Piratas dos Oceanos");
  Livrodigital digital = Livrodigital(32, "Larissa Qui", "Piratas dos Oceanos");

  fisico.exibirInformacoes();
  digital.exibirInformacoes();
}