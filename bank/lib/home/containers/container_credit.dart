import 'package:flutter/material.dart';

class ContainerCredit extends StatelessWidget {
  final String titulo;
  final String subTitulo;
  final String valor;
  final String messageOne;
  final String messageTwo;
  final bool button;

  ContainerCredit(this.titulo, this.subTitulo, this.valor, this.messageOne,
      this.messageTwo, this.button);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Container(
        constraints: BoxConstraints(minHeight: 200, minWidth: double.infinity),
        decoration: BoxDecoration(
          color: Color(0xFF121212),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 24, top: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.credit_card,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Text(
                    titulo,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                subTitulo,
                style: TextStyle(
                  color: Color(0xFF9E9C9C),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Text(
                "$valor",
                style: TextStyle(
                  color: Color(0xFF26A1DE),
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (button)
                Container(
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.white)),
                  width: 217,
                  height: 41,
                  child: Center(
                    child: Text(
                      "Simular empréstimo",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              SizedBox(
                height: 14,
              ),
              Row(
                children: [
                  Text(
                    messageOne,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    messageTwo,
                    style: TextStyle(
                      color: Color(0xFF1F7F45),
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
