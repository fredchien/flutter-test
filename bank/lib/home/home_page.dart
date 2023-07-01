import 'package:bank/home/containers/container_credit.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: Text('Olá Frederic'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
            child: Column(
              children: [
                ContainerCredit("Contas a pagar", "Fatura atual",
                    "R\$ 2.356,70", "Pagamento até dia:", "25/07/2023", false),
                ContainerCredit("Contas a receber", "Conta corrente",
                    "10.345,00", "Recebimento até dia:", "05/07/2023", false),
                ContainerCredit(
                    "Cartão de crédito",
                    "Fatura atual",
                    "R\$ 1.685,40",
                    "Limite disponível:",
                    "R\$ 7.600,00",
                    false),
                ContainerCredit("Empréstimo", "Solicite seu empréstimo", "",
                    "Valor disponível:", "R\$ 17.400,00", true),
              ],
            ),
          ),
        ));
  }
}
