import 'carro.dart';

class Oficina {
  void revisar(Carro carro) {
    // Altera a quilometragem 
    carro.quilometragem += 10;
    print('Realizando teste de rodagem no ${carro.modelo}');
  }
}