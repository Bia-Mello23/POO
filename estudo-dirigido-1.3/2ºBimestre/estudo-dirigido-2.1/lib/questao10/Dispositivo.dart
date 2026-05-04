class Dispositivo {
  String marca;
  String modelo;

  Dispositivo(this.marca, this.modelo);

  void ligar(){
    print("O dispositivo $marca $modelo esta sendo ligado");
  }
}