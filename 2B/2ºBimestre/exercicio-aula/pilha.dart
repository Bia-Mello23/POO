
class Pilha<T> {


static const int MAX_TAM = 10;



final List<T> _itens = [];







Pilha<T> operator +(T item) {

if (_itens.length >= MAX_TAM) {

print("Erro: A pilha está cheia!");

} else {

_itens.add(item);

}

return this;

}



Pilha<T> operator -(int valor) {

if (_itens.isEmpty) {

print("Erro: A pilha está vazia!");

} else {

_itens.removeLast();

}

return this;

}




T operator [](int index) {

if (index < 0 || index >= _itens.length) {

throw RangeError("Índice fora dos limites da pilha.");

}

return _itens[index];

}



@override

String toString() => _itens.toString();

}



void main() {

Pilha<String> minhaPilha = Pilha<String>();




minhaPilha + "Carta A";

minhaPilha + "Carta B";

print("Pilha: $minhaPilha"); 




print("Posição 0: ${minhaPilha[0]}"); 




minhaPilha ;

print("Pilha após desempilhar: $minhaPilha"); 

}

