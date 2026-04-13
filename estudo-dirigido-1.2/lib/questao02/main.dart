import 'produto.dart';

void main() {
  //criando o objeto usando o construtor posicional
  //a ordem deve ser: nome, preço, estoque
  var meuProduto = Produto('Notebook', 3500.0, 10);

  //exibindo a ficha inicial
  meuProduto.exibirFicha();

  //testando os métodos
  meuProduto.repor(5);  //enviando "mensagens" para o objeto
  meuProduto.vender(3); //main não mexe nos dados internos diretamente, ela chama os métodos (repor, vender) para fazer isso
  
  //exibindo a ficha após as movimentações
  meuProduto.exibirFicha();
}