import 'carro.dart';
import 'motor.dart';

void main() {
  Motor motor1 = Motor(150, "Flex");
  Motor motor2 = Motor(200, "Elétrico");

  Carro carro1 = Carro("Civic", motor1);
  Carro carro2 = Carro("Tesla Model 3", motor2);

  print("Modelo do carro1: ${carro1.modelo}");
  print("Potência do motor1: ${carro1.motor.potencia}");

  print("\n Carro 1");
  carro1.exibirCarro();

  print("\n Carro 2");
  carro2.exibirCarro();
}

