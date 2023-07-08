import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
              icono: Icons.window,
              titleIcoco: 'General',
              color: Colors.lightBlue),
          _SingleCard(
              icono: Icons.emoji_transportation,
              titleIcoco: 'Transport',
              color: Colors.purple),
        ]),
        TableRow(children: [
          _SingleCard(
              icono: Icons.shopping_bag_sharp,
              titleIcoco: 'Shopping',
              color: Colors.pink),
          _SingleCard(
              icono: Icons.menu_book,
              titleIcoco: 'Bills',
              color: Colors.orange),
        ]),
        TableRow(children: [
          _SingleCard(
              icono: Icons.movie_creation_outlined,
              titleIcoco: 'Entertaiment',
              color: Colors.blue),
          _SingleCard(
              icono: Icons.local_grocery_store,
              titleIcoco: 'Grocery',
              color: Colors.green),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icono;
  final String titleIcoco;
  final Color color;

  const _SingleCard({
    super.key,
    required this.icono,
    required this.titleIcoco,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      height: 275,
      decoration: BoxDecoration(
          color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(icono, size: 50),
            radius: 50,
          ),
          const SizedBox(height: 15),
          Text(
            titleIcoco,
            style: TextStyle(color: color, fontSize: 25),
          )
        ],
      ),
    );
  }
}
