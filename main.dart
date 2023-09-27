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

      subtrarir(entrada1, entrada2);

      break;
    case 3:
      print("Digite o primairo valor");
      String? entrada1 = stdin.readLineSync();
      print("Digite o segundo valor ");
      String? entrada2 = stdin.readLineSync();

      multiplicar(entrada1, entrada2);

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

void subtrarir(String? valor1, String? valor2) {
  if (valor1 != null && valor2 != null) {
    if (valor1.isNotEmpty && valor2.isNotEmpty) {
      try {
        double num1 = double.tryParse(valor1) ?? 0.0;
        double num2 = double.tryParse(valor2) ?? 0.0;
        print('');
        print('O valor da subtração é ${num1 - num2}');
        print('');
      } catch (e) {
        throw (Exception("ERRO! ${valor1} e ${valor2} não são valores numéricos"));
      }
    } else {
      print("ERRO! valor inexistente ");
    }
  } else {
    print("ERRO! valor Nulo ou inexistente");
  }
}

void multiplicar(String? valor1, String? valor2) {
  if (valor1 != null && valor2 != null) {
    if (valor1.isNotEmpty && valor2.isNotEmpty) {
      try {
        double num1 = double.tryParse(valor1) ?? 0.0;
        double num2 = double.tryParse(valor2) ?? 0.0;

        print("\n O resultado ${num1 * num2}\n");
      } catch (e) {
        throw (Exception('ERRO! os valores $valor1 e $valor2'));
      }
    } else {
      print("ERRO! o valor não foi digitado.");
    }
  } else {
    print("Valor Nulo !");
  }
}

void dividir(String? valor1, String? valor2) {
  if (valor1 != null && valor2 != null) {
    if (valor1.isNotEmpty && valor2.isNotEmpty) {
      try {
        double num1 = double.tryParse(valor1) ?? 0.0;
        double num2 = double.tryParse(valor2) ?? 0.0;
        print("");
        print("O valor da Divisão é ${num1 / num2}");
        print("");
      } catch (e) {
        throw (Exception("ERRO! o valor ${valor1} e ${valor2} não São valores vãlidos"));
      }
      ;
    } else {
      print('ERRO! valor nulo !');
    }
  } else {
    print("Digite um valor não nulo ");
  }
}
