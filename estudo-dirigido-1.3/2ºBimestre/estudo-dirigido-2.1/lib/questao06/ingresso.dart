class Ingresso {
  String evento;
  double valor;


  Ingresso(this.evento, this.valor);

  void exibirResumo() {
    print('Evento: $evento');
    print('Valor: R\$ $valor');
  }
}
class IngressoVIP extends Ingresso {
  double _valorAdicional;
  IngressoVIP(String evento, double valor, this._valorAdicional) : super(evento, valor); // : inicializa a classe pai com parâmetros
  double valorFinal() {
    return valor + _valorAdicional;
  }
  @override // Sobrescreve o método exibirResumo da classe pai
  void exibirResumo() {
    super.exibirResumo(); 
    print('Valor Adicional: R\$ $_valorAdicional');
    print('Valor Final: R\$ ${valorFinal()}');
  }
}

void main() {
  var acessoSomente1dia = Ingresso('Codecon - Somente 1 dia', 199.00);
  print ("Acesso Somente 1 dia:");
  acessoSomente1dia.exibirResumo();

  var acessoPassaporte = IngressoVIP('Codecon - Passaporte', 199.00, 160.00);
  
  acessoPassaporte.exibirResumo();
}

