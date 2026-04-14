import 'contato.dart';

class Agenda {
  List<Contato> _contatos;

  // Construtor - agenda zerada
  Agenda.vazia() : _contatos = [];

  // Construtor - agenda com uma lista
  Agenda.comContatos(this._contatos);

  // Método para colocar um contato novo na lista
  void adicionarContato(Contato novo) {
    _contatos.add(novo);
  }

  // Método para tirar alguém da lista pelo nome
  void removerContatoPorNome(String nomeBusca) {
    for (int i = 0; i < _contatos.length; i++) {
      if (_contatos[i].nome == nomeBusca) {
        _contatos.removeAt(i);
        print("Aviso: $nomeBusca foi removido da agenda.");
        break; // Para o loop assim que achar e apagar
      }
    }
  }

  // Método para mostrar todo mundo
  void listarContatos() {
    if (_contatos.isEmpty) {
      print("Agenda vazia.");
    } else {
      for (var c in _contatos) {
        c.exibir();
      }
    }
  }
}