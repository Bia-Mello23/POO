class Produto {
  //atributos
  String _nome;
  double _preco; //variaveis privadas
  int _estoque;

  //construtor com parâmetros posicionais
  Produto(this._nome, this._preco, this._estoque);

  //mtodo para repor o estoque
  void repor(int qtd) {
    _estoque += qtd; //repor, conta simples de soma +=
    print('Reposição de $qtd unidades feita com sucesso.');
  }

  //método para vender (subtrair do estoque)
  void vender(int qtd) {
    if (qtd <= _estoque) { //condicao (if),
      _estoque -= qtd;
      print('Venda de $qtd unidades realizada.');
    } else {
      print('Estoque insuficiente para vender $qtd unidades.');
    }
  }

  //método para exibir as informações
  void exibirFicha() {
    print('--- Ficha do Produto ---');
    print('Nome: $_nome');
    print('Preço: R\$ ${_preco.toStringAsFixed(2)}'); //O $ serve para chamar a variável dentro do texto
    print('Estoque atual: $_estoque');                  //toStringAsFixed(2):garantir que o preco sempre tenha
    print('-----------------------');                     //2 casas decimais, ex: 3500.00
  }
}