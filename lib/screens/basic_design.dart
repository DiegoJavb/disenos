import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        child: Center(
          child: Column(
            children: [
              //TODO: Landscape image
              Image(image: AssetImage('assets/landscape.jpg')),
              //TODO: Title section
              TitleSection(),
              //TODO: Button section
              ButtonSection(),
              //TODO: overview
              Overview()
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Proident minim laboris dolor Lorem dolor',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),
              Text(
                'Lorem dolor elit eu magna ullamco.',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 20, color: Colors.black45),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.star, color: Colors.red, size: 30),
              Text('41', style: TextStyle(fontSize: 20)),
            ],
          )
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomButton('Call', Icons.phone),
          CustomButton('Route', Icons.zoom_out_map_sharp),
          CustomButton('Share', Icons.share),
        ],
      ),
    );
  }
}

class Overview extends StatelessWidget {
  const Overview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      child: const Text(
        'Est est enim eu esse in fugiat. Reprehenderit qui amet nostrud culpa duis incididunt. Labore qui anim elit ullamco ipsum adipisicing est. Ex adipisicing ipsum adipisicing eu aliquip ut.Est est enim eu esse in fugiat. Reprehenderit qui amet nostrud culpa duis incididunt. Labore qui anim elit ullamco ipsum adipisicing est. Ex adipisicing ipsum adipisicing eu aliquip ut',
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String detail;
  final IconData icono;
  const CustomButton(this.detail, this.icono, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(icono, color: Colors.blue, size: 50),
      const SizedBox(height: 15),
      Text(detail, style: const TextStyle(fontSize: 20, color: Colors.blue))
    ]);
  }
}
