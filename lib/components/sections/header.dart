import 'package:flutter/material.dart';

class Header extends StatelessWidget {
const Header({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        color: Colors.purple[400],
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 80.0, 16.0, 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('\$1000.00', style: TextStyle(fontSize: 28),),
                Text('Balanço Disponível'),
              ],
            ),
            Icon(Icons.account_circle, size: 42,),
          ],
        ),
      ),
    );
  }
}
