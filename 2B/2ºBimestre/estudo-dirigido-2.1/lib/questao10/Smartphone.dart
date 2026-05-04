import 'Dispositivo.dart';

class Smartphone extends Dispositivo {
  String sistemaOperacional;

  Smartphone(this.sistemaOperacional, String marca, String modelo) :super (marca, modelo);

  @override
  void ligar() {
    print("O dispositivo $marca $modelo foi iniciado com o sistema $sistemaOperacional");
  }
}