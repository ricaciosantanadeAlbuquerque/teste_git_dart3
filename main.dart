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

void escolha({required int op}) {
  switch (op) {
    case 1:
      print("Digite o primairo valor");
      String? entrada1 = stdin.readLineSync();
      print("Digite o segundo valor ");
      String? entrada2 = stdin.readLineSync();
      break;
    case 2:
      print("Digite o primairo valor");
      String? entrada1 = stdin.readLineSync();
      print("Digite o segundo valor ");
      String? entrada2 = stdin.readLineSync();
      break;
    case 3:
      print("Digite o primairo valor");
      String? entrada1 = stdin.readLineSync();
      print("Digite o segundo valor ");
      String? entrada2 = stdin.readLineSync();
      break;
    case 4:
      print("Digite o primairo valor");
      String? entrada1 = stdin.readLineSync();
      print("Digite o segundo valor ");
      String? entrada2 = stdin.readLineSync();
      break;
    case 5:
      exit(0);
    default:
      print('Valor fora da Faixa !');
  }
}
