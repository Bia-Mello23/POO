import 'retangulo.dart';

void main() {
  // Criando pelo construtor padrão
  var r1 = Retangulo(10.0, 5.0);
  
  // Criando pelo construtor unitário (1x1)
  var r2 = Retangulo.unitario();
  
  // Criando pelo construtor nomeado quadrado
  var r3 = Retangulo.quadrado(7.0);

  r1.exibirDados();
  r2.exibirDados();
  r3.exibirDados();
}