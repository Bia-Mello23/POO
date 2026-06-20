abstract class Veiculo {
  String marca;
  String modelo;
  int ano;

  Veiculo(this.marca, this.modelo, this.ano);

  void exibirFicha(); 
}

class Carro extends Veiculo {
  int numeroPortas;

  Carro(String marca, String modelo, int ano, this.numeroPortas)
      : super(marca, modelo, ano);

  @override
  void exibirFicha() {
    print(' Carro ');
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano: $ano');
    print('Número de Portas: $numeroPortas');
  }
}

class Caminhao extends Veiculo {
  double capacidadeCarga;

  Caminhao(String marca, String modelo, int ano, this.capacidadeCarga)
      : super(marca, modelo, ano);

  @override
  void exibirFicha() {
    print(' Caminhão ');
    print('Marca: $marca');
    print('Modelo: $modelo');
    print('Ano: $ano');
  print('Capacidade de Carga: $capacidadeCarga toneladas');  }
}

void main() {
  Carro carro = Carro('Honda', 'Civic', 2016, 4);
  Caminhao caminhao = Caminhao('Volvo', 'VM', 2015, 20.0);

  carro.exibirFicha();
  print('');
  caminhao.exibirFicha();
}