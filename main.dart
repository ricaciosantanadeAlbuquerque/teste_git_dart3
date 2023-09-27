import 'dart:io';

void main() {
  menu();
}

void menu() {
  print("Digite 1 para somar");
  print("Digite 2 para subtrair");
  print("Digite 3 para multiplicar");
  print("Digite 4 para Dividir");
  print("Digite 5 para sair");

  String? entradaValor = stdin.readLineSync();

  if (entradaValor != null) {
    if (entradaValor.isNotEmpty) {
      try {
        int argumento = int.parse(entradaValor);
      } catch (e) {
        throw Exception('ERRO $entradaValor não é um valor numérico !');
      }
    } else {
      print("ERRO! não foi passado nenhum valor !");
    }
  } else {
    print("ERRO! valor nulo");
  }
}
