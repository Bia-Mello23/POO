//Polimorfismo
//Poli = muitos/muitas
//Morfismo = formas

//Polimorfismo paramétrico

//1 função com o mesmo nome, mas com parâmetros diferentes

void soma(int x, int y, [int z = 0]) {
  return x + y + z;
}

soma(2, 3); //5
soma(2, 3, 4); //9

//Tipos Genericos

class Caixa<T> {
  T? _coisa;

  Caixa(
}