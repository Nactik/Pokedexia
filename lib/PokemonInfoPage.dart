import 'package:flutter/material.dart';
import 'package:pokeapi/model/pokemon/pokemon.dart';
import 'package:pokeapi/pokeapi.dart';
import 'package:pokedexia/Utils.dart';
import 'package:pokedexia/widget/PokemonInfoHeader.dart';

class PokemonInfoPage extends StatelessWidget {
  final Pokemon _pokemon;
  const PokemonInfoPage(this._pokemon);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Utils.getColorFromType(_pokemon.types[0].type.name),
      appBar: AppBar(
        backgroundColor: Utils.getColorFromType(_pokemon.types[0].type.name),
        elevation: 0,
      ),
      body: SafeArea(
          child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            child: PokemonInfoHeader(_pokemon),
          ),
          DraggableScrollableSheet(
            expand: true,
            initialChildSize: 0.7,
            minChildSize: 0.7,
            maxChildSize: 1.0,
            builder: (context, scrollController) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    children: [
                      Text(_pokemon.species.name),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      )),
    );
  }
}
