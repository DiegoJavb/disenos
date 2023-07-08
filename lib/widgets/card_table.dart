import 'dart:ui';

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
        TableRow(children: [
          _SingleCard(
              icono: Icons.food_bank,
              titleIcoco: 'Food',
              color: Colors.yellowAccent),
          _SingleCard(
              icono: Icons.place,
              titleIcoco: 'Places',
              color: Colors.pinkAccent),
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
    required this.icono,
    required this.titleIcoco,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 275,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: color,
                  radius: 50,
                  child: Icon(
                    icono,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 15),
                Text(
                  titleIcoco,
                  style: TextStyle(color: color, fontSize: 25),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
