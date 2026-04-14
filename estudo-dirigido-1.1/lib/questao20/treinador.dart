import 'pokemon.dart';

class Treinador {
  String _nome;
  Pokemon _pokemon1;
  Pokemon _pokemon2;
  Pokemon _pokemon3;

  Treinador(this._nome, this._pokemon1, this._pokemon2, this._pokemon3) {
    if (_nome.isEmpty) {
      print("Erro: O nome do treinador não pode ser vazio!");
    }
  }

  String get nome => _nome;
  Pokemon get pokemon1 => _pokemon1;
  Pokemon get pokemon2 => _pokemon2;
  Pokemon get pokemon3 => _pokemon3;

  int calcularPoderTotal() {
    return _pokemon1.nivel + _pokemon2.nivel + _pokemon3.nivel;
  }

  Pokemon pokemonMaisForte() {
    if (_pokemon1.nivel >= _pokemon2.nivel && _pokemon1.nivel >= _pokemon3.nivel) {
      return _pokemon1;
    }
    if (_pokemon2.nivel >= _pokemon3.nivel) {
      return _pokemon2;
    }
    return _pokemon3;
  }

  void exibirTime() {
    print(" Treinador: $_nome");
    print("Poder Total: ${calcularPoderTotal()}");
    print("--- Pokémon 1 ---");
    _pokemon1.exibirPokemon();
    print("--- Pokémon 2 ---");
    _pokemon2.exibirPokemon();
    print("--- Pokémon 3 ---");
    _pokemon3.exibirPokemon();
    print("--- Pokémon Mais Forte ---");
    pokemonMaisForte().exibirPokemon();
  }
}