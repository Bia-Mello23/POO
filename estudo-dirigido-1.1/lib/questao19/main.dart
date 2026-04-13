/******************************************************************************
Welcome to GDB Online.
GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
Code, Compile, Run and Debug online from anywhere in world.

*******************************************************************************/
import 'casa.dart';

void main() {
  // Criando cômodos
  Comodo c1 = Comodo("Sala", 25.5);
  Comodo c2 = Comodo("Quarto", 18.0);
  Comodo c3 = Comodo("Cozinha", 12.0);
 
  // Criando casa
  Casa casa = Casa("Jurema", c1, c2, c3);
 
  // Exibindo dados
  casa.exibirCasa();
}