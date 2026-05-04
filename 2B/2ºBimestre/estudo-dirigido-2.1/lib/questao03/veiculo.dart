class Veiculo {
  String marca;
  String modelo;
  int ano;

  Veiculo({
    required this.marca,
    required this.modelo,
    required this.ano,
  });

  void exibirFicha() {
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano: $ano');
  }
}

class Carro extends Veiculo {
  int quantidadePortas;

  Carro({
    required String marca,
    required String modelo,
    required int ano,
    required this.quantidadePortas,
  }) : super(marca: 'Honda', modelo: 'Civic', ano: 2016);

  @override
  void exibirFicha() {
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano: $ano');
    print('Quantidade de Portas: $quantidadePortas');
  }
}

void main() {
  Carro carro = Carro(
    marca: 'Honda',
    modelo: 'Civic',
    ano: 2016,
    quantidadePortas: 4,
  );

  carro.exibirFicha();
}