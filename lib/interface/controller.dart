import 'package:flutter/material.dart';

class Controlador extends ChangeNotifier {
  int _placar = 0;

  int get placar => _placar;

  void adicionar({int qtd = 10}) {
    _placar += qtd;
    notifyListeners();
  }
  void adinionarEspecial({int qtd = 50}) {
    _placar += qtd;
    notifyListeners();
  }

  void diminuir({int qtd = 10}) {
    _placar -= qtd;
    notifyListeners();
  }
}
