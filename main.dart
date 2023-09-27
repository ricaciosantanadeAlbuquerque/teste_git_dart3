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

        escolha(op: argumento);
        
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

      soma(entrada1, entrada2);

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

void soma(String? valor1, String? valo2) {
  if (valor1 != null && valo2 != null) {
    if (valor1.isNotEmpty && valo2.isNotEmpty) {
      try {
        double num1 = double.tryParse(valor1) ?? 0.0;
        double num2 = double.tryParse(valo2) ?? 0.0;

        print(num1 + num2);
      } catch (e) {
        throw (Exception('ERRO! o valor ${valor1} e $valo2 não são valores numericos'));
      }
    } else {
      print("ERRO ! valor Inexistente");
    }
  } else {
    print("ERRO! valores nulos");
  }
}
