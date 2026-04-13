import 'produto.dart';

void main() {
  // Criando o produto com 12 unidades (ganha 10% de desconto)
  Produto p = Produto(1, "Monitor", 1000.0, 12);
  p.exibirResumo();

  // Substituindo os dados (agora é um Mouse com 2 unidades - sem desconto)
  p.nome = "Mouse";
  p.precoUnitario = 50.0;
  p.quantidade = 2;
  
  p.exibirResumo();
}