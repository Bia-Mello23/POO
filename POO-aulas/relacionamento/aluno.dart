class Aluno {
  String _nome = '';
  String _matricula = 0;
  List<Disciplina> _disciplinas = []; //[] significa que é uma lista vazia

//[] significa que é opcional e pode ser vazio, ou seja, o aluno pode não ter nenhuma disciplina.
  Aluno(this._nome, this._matricula, );
}

//modo 1 - recebe o objeto de fora / agregação
void set disciplinas(List<Disciplina> disciplinas) { //List<Disciplina> é o tipo do parâmetro, ou seja, é uma lista de disciplinas.
  _disciplinas = disciplinas;
 
}

//modo 2 - delega as operações da lista na interface do aluno
//agregação porque disciplina vem de fora/ pode participar de vários outros alunos
void adicionarDisciplina(Disciplina disciplina) { //Disciplina é o tipo do parâmetro, ou seja, é uma disciplina.
  _disciplinas.add(disciplina); //add é um método da lista que adiciona um elemento na lista.
}

void removerDisciplina(Disciplina disciplina) {
  _disciplinas.remove(disciplina); //remove é um método da lista que remove um elemento da lista.
}

Disciplina get disciplina (int i) {
  return _disciplinas[i]; //get é um método que retorna o valor de um atributo, ou seja, retorna a disciplina na posição i da lista de disciplinas do aluno.
}


