class Lampada {
  //cria atributos privados pra acessar na main depois
  bool _ligada;
  int _intensidade;
}


//inicializando a lampada (inicia desligada e com intensidade 50)
//construtor sem parâmetros é utilizado para iniciar uma classe com valor padrão
  Lampada()
{  
  _ligada = false;
  _intensidade = 50;
}