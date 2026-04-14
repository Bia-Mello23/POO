import 'cupomdesconto.dart';

void main() {
  //criar um cupom de 15% ativo
  CupomDesconto meuCupom = CupomDesconto("PROMO15", 15.0, true); 

  //alterar dados usando setter (validação entre 0 e 100)
  meuCupom.percentual = 20.0; //testo se o Setter está funcionando
  meuCupom.codigo = "FERIADO20";

  //testar o cálculo do desconto sobre um valor qualquer (ex: R$ 100,00)
  double valorCompra = 100.0;
  double descontoGerado = meuCupom.calcularDesconto(valorCompra); //o main delega a responsabilidade do cálculo para o objeto meuCupom.
 //Eu passo o valor da compra (R$ 100,00) e o objeto me devolve o valor do desconto (R$ 20,00)
  //exibir os dados finais 
  print("--- Teste de Cupom ---"); 
  meuCupom.exibirCupom();           
  print("Valor da compra: R\$ $valorCompra");
  print("Desconto aplicado: R\$ $descontoGerado"); //\$ para o Dart entender que quero imprimir o símbolo do cifrão e não uma variável
  print("Total com desconto: R\$ ${valorCompra - descontoGerado}"); //utilizo a interpolação de strings para mostrar o valor final subtraído
}