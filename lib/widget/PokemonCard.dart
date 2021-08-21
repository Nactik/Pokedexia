import 'package:pokeapi/model/pokemon/pokemon.dart';
import 'package:flutter/material.dart';
import 'package:pokedexia/PokemonInfoPage.dart';
import 'package:pokedexia/widget/PokemonTypeChip.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonCard(this.pokemon);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      color: Colors.white,
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PokemonInfoPage(pokemon)),
        ),
        child: Row(children: [
          Padding(
              padding: const EdgeInsets.all(10),
              child: Hero(
                  tag: pokemon.id,
                  child: Image(
                      image: NetworkImage(pokemon.sprites.frontDefault)))),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(pokemon.name[0].toUpperCase() + pokemon.name.substring(1),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20)),
              Wrap(
                direction: Axis.horizontal,
                spacing: 5,
                children: [
                  for (Types type in pokemon.types) PokemonTypeChip(type),
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
