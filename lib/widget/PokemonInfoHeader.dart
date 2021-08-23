import 'package:pokedexia/Utils.dart';
import 'package:pokedexia/widget/PokemonTypeChip.dart';
import 'package:flutter/material.dart';
import 'package:pokeapi/model/pokemon/pokemon.dart';
import 'package:intl/intl.dart' as intl;

class PokemonInfoHeader extends StatelessWidget {
  final Pokemon _pokemon;

  const PokemonInfoHeader(this._pokemon);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    _pokemon.name[0].toUpperCase() + _pokemon.name.substring(1),
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40)),
                Text("#" + intl.NumberFormat("#000").format(_pokemon.id),
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40))
              ],
            ),
          ),
          Opacity(
            opacity: 0.5,
            child: Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.start,
                spacing: 5,
                children: [
                  for (Types type in _pokemon.types) PokemonTypeChip(type),
                ]),
          ),
          Center(
            child: Hero(
              tag: _pokemon.id,
              child: Image(
                image: NetworkImage(_pokemon.sprites.frontDefault),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
