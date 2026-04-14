import 'pokemon.dart';
import 'treinador.dart';

void main() {
  Pokemon p1 = Pokemon(585, "Deerling",  "Normal",   45, 90);
  Pokemon p2 = Pokemon(54,  "Psyduck",   "Água",     60, 110);
  Pokemon p3 = Pokemon(669, "Flabébé",   "Fada",     30, 70);

  Treinador Beatriz = Treinador("Beatriz", p1, p2, p3);

  print("Nome do treinador: ${Beatriz.nome}");
  print("Nome do P1: ${Beatriz.pokemon1.nome}");
  print("Nível do P1: ${Beatriz.pokemon1.nivel}");

  print("\n=== Time do Treinador ===");
  Beatriz.exibirTime();

  print("\n=== Pokémon Mais Forte ===");
  Pokemon maisForte = Beatriz.pokemonMaisForte();
  maisForte.exibirPokemon();
}