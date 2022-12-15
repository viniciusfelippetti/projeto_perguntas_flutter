import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 1) {
      return 'Não houve acerto, tente novamente!';
    } else if (pontuacao < 3) {
      return 'Você acertou ${pontuacao} questões';
    } else {
      return 'Parabéns!!! Você acertou todas as questões!!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        SizedBox(height: 30),
        TextButton(
          onPressed: quandoReiniciarQuestionario,
          child: Text("Reiniciar"),
        ),
      ],
    );
  }
}
