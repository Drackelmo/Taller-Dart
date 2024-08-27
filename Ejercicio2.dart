// Crea un programa que implemente un sistema de autenticación sencillo. Debe permitir al usuario ingresar un nombre de usuario y una contraseña, y verificar si las credenciales coinciden con las almacenadas.

import 'dart:io';

void main() {
  Map<String, String> cuenta = {'admin': '1234', 'user': '4321'};
  print("Ingrese Usuario: ");
  var usuario = stdin.readLineSync();
  print("Ingrese Contraseña: ");
  var pass = stdin.readLineSync();
  if (cuenta[usuario] != null) {
    if (cuenta[usuario] == pass) {
      print("Sesion iniciada");
    } else {
      print("Contraseña incorrecta");
    }
  } else {
    print("Usuario no existe");
  }
}
