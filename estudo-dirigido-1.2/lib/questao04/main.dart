import 'usuario.dart';

void main() {
  Usuario u1 = Usuario("Beatriz", "beatriz23@utp.com", "Bia");
  Usuario u2 = Usuario("Larissa", "larissa@utp.com"); // sem apelido

  u1.exibirPerfil(); 
  u2.exibirPerfil(); 
}