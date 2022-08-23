import 'package:alubank/components/box_card.dart';
import 'package:flutter/material.dart';

class AccountActions extends StatelessWidget {
const AccountActions({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Ações da conta',
              style: TextStyle(fontSize: 20),
            ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              BoxCard(
                content: _AccountActionsContent(
                    icon: Icon(Icons.account_balance_wallet),
                    text: 'Depositar'),
              ),
              BoxCard(
                content: _AccountActionsContent(
                  icon: Icon(Icons.cached),
                  text: 'Transferir',
                ),
              ),
              BoxCard(
                content: _AccountActionsContent(
                    icon: Icon(Icons.center_focus_strong), text: 'Ler'),
              ),
          ],
        ),
      ],),
    );
  }
}

class _AccountActionsContent extends StatelessWidget {
  final Icon icon;
  final String text;
const _AccountActionsContent({ Key? key, required this.icon, required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      width: 70,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: icon,
          ),
          Text(text),
        ],
      ),
    );
  }
}
