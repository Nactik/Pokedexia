import 'package:flutter/material.dart';

class Utils {
  static Color getColorFromType(String type) {
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
}






/*
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