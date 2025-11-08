
import 'dart:io';

void main() {

  List<String> notas = <String>[];

  menu(notas);
  
}

String? getComando(){

  List<String> comandos = <String>["1", "2", "3"];
  
  print("Digite a opção desejada: 1 - Adicionar nota, 2 - Listar notas, 3 - Sair");

  String? entrada = "";
  entrada = stdin.readLineSync();

  if(entrada == null || !comandos.contains(entrada)){
    print("Opção inválida!");
    return getComando();
  } 

    return entrada;

}

List<String> adicionaNota(List<String> notas){

  String? nota = "";

  print("Escreva uma nota:");

  nota = stdin.readLineSync();

  if(nota == null || nota.isEmpty){
    print("Não é possível adicionar uma nota vazia");
    adicionaNota(notas);
  }

  notas.add(nota!);

  return notas;
}

void listarNotas(List<String> notas){

  for(var i = 0; i < notas.length; i++){

    print(notas[i]);
  
  }
}

void menu(List<String> notas){

  print("");
  cabecalho();
  print("");
  String? comando = getComando();
  print("");

  switch(comando){
    case "1":
    adicionaNota(notas);
    menu(notas);

    case "2":
    listarNotas(notas);
    menu(notas);

    case "3":
    print("Até breve!");

  }
}

void cabecalho(){

print( "  _    _       _                ");
print( " | \\ | |     | |               ");
print( " |  \\| | ___ | |_ __ _ ___     ");
print( " | . \` |/ _ \\| __/ _\` / __|  ");
print( " | |\\  | (_) | || (_| \\__ \\  ");
print( " |_| \\_|\\___/ \\__\\__,_|___/ ");


}