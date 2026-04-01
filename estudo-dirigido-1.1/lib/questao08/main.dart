import 'endereco.dart';

void main() {
  Endereco e1 = Endereco(
    "Rua das Flores",
    123,
    "Centro",
    "Curitiba",
    "PR",
    80010000,
  );

  Endereco e2 = Endereco(
    "Avenida Paulista",
    1000,
    "Bela Vista",
    "São Paulo",
    "SP",
    1310100,
  );

  Endereco e3 = Endereco(
    "Rua do Ouvidor",
    50,
    "Centro",
    "Rio de Janeiro",
    "RJ",
    20040030,
  );

  print("Rua do E1: ${e1.rua}");
  print("CEP do E1: ${e1.cep}");

  print("\n Endereço 1 ");
  e1.exibirEndereco();

  print("\n Endereço 2 ");
  e2.exibirEndereco();

  print("\n Endereço 3 ");
  e3.exibirEndereco();
}