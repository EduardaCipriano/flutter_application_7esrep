import 'package:flutter/material.dart';
import 'package:prompt_dialog/prompt_dialog.dart';

class AlunoAprovado extends StatelessWidget {
  const AlunoAprovado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String mediaTexto= '';
    int media= 0;

    return ElevatedButton(
        onPressed: () async {
          print('digite a média do aluno:');
          mediaTexto=
           await prompt(context, title: const Text('Nota do aluno')) ?? '0';
          media = int.parse(mediaTexto);
          if(media>=7){
             print('aluno aprovado');
          }else{
             print('aluno reprovado');
          }
        },
        child: Text('Clique aqui'));
  }
}
