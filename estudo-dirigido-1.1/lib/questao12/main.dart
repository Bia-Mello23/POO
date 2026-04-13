import 'circulo.dart';

void main() {
  //Criando as 3 instâncias com cores e tamanhos diferentes 
  
  // Círculo 1
  Circulo c1 = Circulo(5.0, "Azul");
  
  // Círculo 2
  Circulo c2 = Circulo(10.0, "Vermelho");
  
  // Círculo 3
  Circulo c3 = Circulo(2.5, "Amarelo");

  // Exibindo o resumo de cada um 
  c1.exibirResumo();
  c2.exibirResumo();
  c3.exibirResumo();
}