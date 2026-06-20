class Dispositivo {
  String marca;
  String modelo;

  Dispositivo(this.marca, this.modelo);
}

abstract class Ligavel {
  void ligar();
  void desligar();
}

class Smartphone extends Dispositivo implements Ligavel {
  String sistemaOperacional;

  Smartphone(
    String marca,
    String modelo,
    this.sistemaOperacional,
  ) : super(marca, modelo);

  @override
  void ligar() {
    print('Smartphone ligando...');
  }

  @override
  void desligar() {
    print('Smartphone desligando...');
  }
}

class Notebook extends Dispositivo implements Ligavel {
  int memoriaRam;

  Notebook(
    String marca,
    String modelo,
    this.memoriaRam,
  ) : super(marca, modelo);

  @override
  void ligar() {
    print('Notebook ligando...');
  }

  @override
  void desligar() {
    print('Notebook desligando...');
  }
}

void main() {
  Smartphone smartphone =
      Smartphone('Samsung', 'Galaxy S24', 'Android');

  Notebook notebook =
      Notebook('Dell', 'Inspiron', 16);

  smartphone.ligar();
  smartphone.desligar();

  print('');

  notebook.ligar();
  notebook.desligar();
} 