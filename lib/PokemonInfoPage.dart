import 'package:flutter/material.dart';
import 'package:pokeapi/model/pokemon/pokemon.dart';
import 'package:pokeapi/pokeapi.dart';

class PokemonInfoPage extends StatelessWidget {
  final Pokemon _pokemon;
  const PokemonInfoPage(this._pokemon);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.arrow_back)],
        title: Text(_pokemon.name),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
          child: Container(
        alignment: Alignment.center,
        child: Hero(
          tag: _pokemon.id,
          child: Image(image: NetworkImage(_pokemon.sprites.frontDefault)),
        ),
      )),
    );
  }
}
