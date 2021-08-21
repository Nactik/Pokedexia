import 'package:pokeapi/model/pokemon/pokemon.dart';
import 'package:flutter/material.dart';

class PokemonTypeChip extends StatelessWidget {
  final Types type;

  PokemonTypeChip(this.type);

  @override
  Widget build(BuildContext context) {
    print(getColorFromType(type.type.name));
    return Chip(
        label: Text(
          type.type.name,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: getColorFromType(type.type.name),
        elevation: 4.0,
        shadowColor: Colors.grey[60],
        padding: EdgeInsets.all(4.0));
  }

  Color getColorFromType(String type) {
    switch (type) {
      case "normal":
        return Color(0xFFA8A77A);
      case "fighting":
        return Color(0xFFC22E28);
      case "flying":
        return Color(0xFFA98FF3);
      case "poison":
        return Color(0xFFA33EA1);
      case "ground":
        return Color(0xFFE2BF65);
      case "rock":
        return Color(0xFFB6A136);
      case "bug":
        return Color(0xFFA6B91A);
      case "ghost":
        return Color(0xFF735797);
      case "steel":
        return Color(0xFFB7B7CE);
      case "fire":
        return Color(0xFFEE8130);
      case "water":
        return Color(0xFF6390F0);
      case "grass":
        return Color(0xFF7AC74C);
      case "electric":
        return Color(0xFFF7D02C);
      case "psychic":
        return Color(0xFFF95587);
      case "ice":
        return Color(0xFF96D9D6);
      case "dragon":
        return Color(0xFF6F35FC);
      case "dark":
        return Color(0xFF705746);
      case "fairy":
        return Color(0xFFD685AD);
      default:
        return Color(0xFFD6D6D6);
    }
  }

  /*
  normal: '#A8A77A',
	fire: '#EE8130',
	water: '#6390F0',
	electric: '#F7D02C',
	grass: '#7AC74C',
	ice: '#96D9D6',
	fighting: '#C22E28',
	poison: '#A33EA1',
	ground: '#E2BF65',
	flying: '#A98FF3',
	psychic: '#F95587',
	bug: '#A6B91A',
	rock: '#B6A136',
	ghost: '#735797',
	dragon: '#6F35FC',
	dark: '#705746',
	steel: '#B7B7CE',
	fairy: '#D685AD',
  
  Color? getColorFromType(String type) {
    switch (type) {
      case "normal":
        return Colors.grey[350];
      case "flying":
        return Colors.purple[100];
      case "poison":
        return Colors.purple[700];
      case "ground":
        return Colors.orange[200];
      case "rock":
        return Colors.orange[400];
      case "bug":
        return Colors.limeAccent[700];
      case "ghost":
        return Colors.purple[700];
      case "steel":
        return Colors.purple[700];
      case "fire":
        return Colors.purple[700];
      case "water":
        return Colors.purple[700];
      case "grass":
        return Colors.purple[700];
      case "electric":
        return Colors.purple[700];
      case "psychic":
        return Colors.purple[700];
      case "ice":
        return Colors.purple[700];
      case "dragon":
        return Colors.purple[700];
      case "dark":
        return Colors.purple[700];
      case "fairy":
        return Colors.purple[700];
      default:
        return Colors.grey[350];
    }
  }*/
}
