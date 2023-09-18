import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  //laços de repetição

  print("Informe a 1ª nota:");
  var line = stdin.readLineSync(encoding: utf8);
  var prova11 = int.parse(line ?? "0");

  print("Informe a 2ª nota:");
  line = stdin.readLineSync(encoding: utf8);
  var prova12 = int.parse(line ?? "0");

  print(prova11);
  print(prova12);

  //calculadora
  print("Informe o primeiro número:");
  var line1 = stdin.readLineSync(encoding: utf8);
  var numb1 = double.parse(line1 ?? "0");

  print("Informe o segundo número:");
  line1 = stdin.readLineSync(encoding: utf8);
  var numb2 = double.parse(line1 ?? "0");

  print("Informe a operação matemática(+,-,*,/):");
  line1 = stdin.readLineSync(encoding: utf8);
  var oper = line1 ?? "";

  print(numb1);
  print(numb2);
  print(oper);

  //com IF
  double resultado = 0;
  if (oper == "+") {
    resultado = numb1 + numb2;
  } else if (oper == "-") {
    resultado = numb1 - numb2;
  } else if (oper == "*") {
    resultado = numb1 * numb2;
  } else if (oper == "/") {
    resultado = numb1 / numb2;
  } else {
    print("Operação Inválida!");
    exit(0); //operação não encontrou erro ao sair
  }
  print("Operação solicitada: $oper");
  print("O resultado é: $resultado");

  //com Switch
  switch (oper) {
    case "+":
      resultado = numb1 + numb2;
      break;
    case "-":
      resultado = numb1 - numb2;
      break;
    case "*":
      resultado = numb1 * numb2;
      break;
    case "/":
      resultado = numb1 / numb2;
      break;
    default:
      print("Operação inválida!");
      exit(0);
  }
  print("Operação solicitada: $oper");
  print("O resultado é: $resultado");

  //for
  for (var i = 0; i <= 99; i++) {
    print(i);
  }

  var texto = "Meu primeiro bloco for";
  for (var i = 0; i < texto.length; i++) {
    //ou <= texto.length -1;
    print(texto[i]);
  }

  var listName = ["Danilo", "Josy", "Duda"];
  for (var i = 1; i < listName.length; i++) {
    print(listName[i]);
  }

  var result = 0;
  for (var i = 0; i <= 100; i++) {
    result = result + i;
    print("$i - $result");
  }
  print(result);

  var qtd = 0;
  var res = 0;
  print("informe a quantidade de números:");
  var line2 = stdin.readLineSync(encoding: utf8);
  qtd = int.parse(line2 ?? "0");
  for (var i = 0; i < qtd; i++) {
    print("Informe o número:");
    line2 = stdin.readLineSync(encoding: utf8);
    var numb3 = int.parse(line2 ?? "0");
    res = res + numb3;
    print("$i - $res");
  }

  var numbers = [1, 5, 9, 50, 85, 45, 90, 74];
  var acumulador = 0;
  for (var numero in numbers) {
    acumulador = acumulador + numero;
    print(numero);
  }
  print(acumulador);

  var letters = ["B", "A", "G", "D", "E", "X"];
  for (var letter in letters) {
    print(letter);
  }

//jeito errado de fazer
  // letters.forEach((element) {
  //   print(element);
  // });

  //while
  var cont = 0;
  var total = 10;

  while (cont < total) {
    cont = cont + 1;
    print(cont);
  }

  print("Digite um número ou 'S' para sair:");
  var line3 = stdin.readLineSync(encoding: utf8);
  double acum = 0;
  while (line3 != "S") {
    var numb6 = double.parse(line ?? "0");
    acum = acum + numb6;
    print("Digite um número ou 'S' para sair:");
    line3 = stdin.readLineSync(encoding: utf8);
  }
  print(acum);

  var op = "";
  var acumulo = 0.0;
  do {
    print("Digite um número ou 'S' para sair:");
    var line4 = stdin.readLineSync(encoding: utf8);
    op = line4 ?? "0";
    var numb7 = double.tryParse(op);
    if (numb7 != null) {
      acumulo = acumulo + numb7;
    }
  } while (op != "S");
  print(acumulo);
}
