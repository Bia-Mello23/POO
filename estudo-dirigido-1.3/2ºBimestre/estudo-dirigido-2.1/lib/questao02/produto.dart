class Produto {
 String nome;
 double preco;

  Produto(this.nome, this.preco);


 void exibirDados() {
 print('Nome: $nome'); print('Preço: R\$ $preco');
 }
}



class ProdutoPerecivel extends Produto {
 String dataValidade;



 ProdutoPerecivel(String nome, double preco, this.dataValidade) : super(nome, preco);



 @override
 void exibirDados() {
 super.exibirDados();
 print('Validade: $dataValidade');
 }
}



void main() {
var leite = ProdutoPerecivel('Leite', 4.50, '30/12/2026');
leite.exibirDados();
}