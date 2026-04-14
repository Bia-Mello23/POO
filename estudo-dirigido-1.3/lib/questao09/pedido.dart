import 'carrinho.dart';
import 'CupomDesconto.dart';

class Pedido {
  String _numero;
  Carrinho _carrinho;
  CupomDesconto? _cupom;
  double _totalBruto = 0;
  double _totalFinal = 0;
  String _status;

  Pedido(this._numero, this._carrinho, this._status) {
    if (_numero.isEmpty) throw Exception("Número não pode ser vazio");
  }

  // Getters
  String get numero => _numero;
  Carrinho get carrinho => _carrinho;
  CupomDesconto? get cupom => _cupom;
  double get totalBruto => _totalBruto;
  double get totalFinal => _totalFinal;
  String get status => _status;

  // Setters com Validação
  set numero(String valor) {
    if (valor.isNotEmpty) _numero = valor;
  }

  set status(String valor) {
    var validos = ["aberto", "fechado", "cancelado"];
    if (validos.contains(valor.toLowerCase())) {
      _status = valor.toLowerCase();
    }
  }

  set cupom(CupomDesconto? valor) => _cupom = valor;

  void fecharPedido() {
    _status = "fechado";
    _totalBruto = _carrinho.valorTotalItens;
    _totalFinal = _cupom != null 
        ? _totalBruto * (1 - _cupom!.porcentagem) 
        : _totalBruto;
  }

  void exibirResumoPedido() {
    print("\n RESUMO DO PEDIDO: $_numero ");
    print("Status: ${_status.toUpperCase()}");
    print("Total Bruto: R\$ ${_totalBruto.toStringAsFixed(2)}");
    if (_cupom != null) {
      print("Cupom: ${_cupom!.nome} (${(_cupom!.porcentagem * 100).toInt()}% OFF)");
    }
    print("TOTAL FINAL: R\$ ${_totalFinal.toStringAsFixed(2)}");
  }
}