import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokeapi/model/pokemon/pokemon.dart';
import 'package:pokeapi/pokeapi.dart';
import 'package:pokedexia/widget/PokemonCard.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedexia',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  List<Pokemon> _pokemons = [];

  @override
  void initState() {
    super.initState();
    fetchPaginedPokemon(1, 150);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          title: Text("Pokedexia"),
          leading: Icon(Icons.arrow_back_ios),
        ),
        backgroundColor: Colors.redAccent,
        body: SafeArea(
            child: ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: _pokemons.length,
                itemBuilder: (BuildContext context, int index) {
                  return PokemonCard(_pokemons[index]);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 10,
                  );
                })));
  }

  void fetchPaginedPokemon(int offset, int limit) {
    assert(offset >= 0);
    assert(limit >= 0);

    PokeAPI.getObjectList<Pokemon>(offset, limit).then((response) => {
          print(response),
          setState(() => {this._pokemons.addAll(response)})
        });
  }
}
