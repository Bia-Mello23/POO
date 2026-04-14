
import '../questao01/cliente.dart';
import '../questao06/lista_carrinho.dart';
import '../questao05/item_carrinho.dart';

class Carrinho {
  Cliente _cliente;
  ListaCarrinho _itens;
  bool _aberto;

  Carrinho(this._cliente, this._itens, this._aberto);

  Cliente get cliente => _cliente;
  ListaCarrinho get itens => _itens;
  bool get aberto => _aberto;

  set cliente(Cliente novoCliente) {
    if (novoCliente != null) _cliente = novoCliente;
  }

  set itens(ListaCarrinho novosItens) {
    if (novosItens != null) _itens = novosItens;
  }

  set aberto(bool status) {
    _aberto = status;
  }

  void adicionarItem(ItemCarrinho item) {
    if (_aberto) {
      _itens.inserir(item);
    }
  }

  void removerItem(int i) {
    if (_aberto) {
      _itens.remover(i);
    }
  }

  double calcularTotal() {
    double total = 0.0;
    for (int i = 0; i < _itens.tamanho(); i++) {
      var item = _itens.get(i);
      if (item != null) total += item.calcularSubtotal();
    }
    return total;
  }

  void exibirCarrinho() {
    print("\n=== CARRINHO DE ${_cliente.nome.toUpperCase()} ===");
    print("Status: ${_aberto ? "ABERTO" : "FECHADO"}");
    _itens.exibirLista();
    print("Total da compra: R\$ ${calcularTotal().toStringAsFixed(2)}");
    print("====================================\n");
  }
}