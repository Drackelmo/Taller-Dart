// 1. Escribe un programa que reciba una lista de números enteros y determine si está ordenada de forma ascendente, descendente o si no está ordenada

void main(){
  bool listaOrdenada(List<int> lista, List<int> aux){
    for(int i = 0; i<lista.length;i++){
      if(lista[i]!=aux[i]){
        return false;
      }
    }
    return true;
  }
  
  List<int> lista = [1,2,3,4,5,6];
  List<int> aux = List.from(lista);
  aux.sort();

  print(lista);
  print(aux);

  if(listaOrdenada(lista, aux)){
    print("Lista Ordenada de forma ascendente");
  }else if(listaOrdenada(lista, aux.reversed.toList())){
    print("Lista Ordenada de forma descendente");
  }else{
    print("Lista Desordenada");
  }
}