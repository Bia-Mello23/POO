class Pessoa {
 String nome;
 int idade;



 Pessoa(this.nome, this.idade);

 void exibirDados() {
   print('--- Dados Pessoais ---');
 print('Nome: $nome');
 print('Idade: $idade');
 }
}



class Aluno extends Pessoa {
 String matricula;
 String curso;



 Aluno(String nome, int idade, this.matricula, this.curso) : super(nome, idade);



 @override
 void exibirDados() {
 super.exibirDados();
 print('Matricula: $matricula');
 print('Curso: $curso');
 }
}



void main() {
 var aluno = Aluno('Denyse', 20, 'ADS123', 'Análise e Desenvolvimento de Sistemas');
 aluno.exibirDados();
}