import 'playlist.dart';

void main() {
//Instanciação: Criando 3 objetos da classe Musica com seus dados
  Musica m1 = Musica("In the End", "Linkin Park", 216);
  Musica m2 = Musica("Sweet Child O' Mine", "Guns N' Roses", 356); //Valores de tempo definidos em segundos para os cálculos serem precisos
  Musica m3 = Musica("Starboy", "The Weeknd", 230);

//Composição: Passa os objetos m1, m2 e m3 para dentro da Playlist
  Playlist minhaFesta = Playlist("Mix 2026", m1, m2, m3);

//Execução: Chama os métodos da playlist para processar as músicas
  minhaFesta.exibirPlaylist(); //Mostra o resumo e a soma do tempo
  print(""); //Apenas pula uma linha
  minhaFesta.tocarPlaylist(); // Simula a reprodução da sequência
}