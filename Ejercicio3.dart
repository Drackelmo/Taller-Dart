//3. Escribe un programa que calcule la raíz cuadrada de un número dado utilizando el método de aproximaciones sucesivas (sin usar funciones de biblioteca).
import 'dart:io';

void main(){
  print("Escribe el numero a sacar raiz");
  var entrada = stdin.readLineSync()??"";
  double radicando = double.tryParse(entrada)??0;
  double aux = 1;
  double raiz = radicando;
  
  if(radicando==0){
    raiz=0;
  }else{
    for(int i=0;i<7;i++){
      raiz = (raiz+aux)/2;
      aux = radicando/raiz;
    }
  }
  print("La raiz de ${radicando} es: ${raiz}");
}