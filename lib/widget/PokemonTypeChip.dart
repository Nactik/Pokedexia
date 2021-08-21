import 'package:pokeapi/model/pokemon/pokemon.dart';
import 'package:flutter/material.dart';
import '../Utils.dart';

class PokemonTypeChip extends StatelessWidget {
  final Types type;

  PokemonTypeChip(this.type);

  @override
  Widget build(BuildContext context) {
    print(Utils.getColorFromType(type.type.name));
    return Chip(
        label: Text(
          type.type.name,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Utils.getColorFromType(type.type.name),
        elevation: 4.0,
        shadowColor: Colors.grey[60],
        padding: EdgeInsets.all(4.0));
  }
}
