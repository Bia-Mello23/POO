class Data {
  //criar uma classe data - atributos
  int dia;
  int mes;
  int ano;

  //usei o formato this.atributo > dart entenda que o valor recebido no parâmetro deve ser gravado diretamente na variável da classe
  Data(this.dia,this.mes,this.ano);

  //método para exibir a data no formato DD/MM/AAAA
  void exibirData() {
    print("$dia/$mes/$ano") //interpolação de strings
  }

}