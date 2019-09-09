import 'package:flutter_web/material.dart';

class NavigationViewModel extends ChangeNotifier {
  List<String> _menuOptions = [
    "Caixa de entrada",
    "Enviados",
    "Meus documentos",
    "Relatórios"
  ];
  List<String> get menuOptions => _menuOptions;

  int _selectedMenuIndex = 0;
  int get selectedMenuIndex => _selectedMenuIndex;

  bool _isMenuOpen = true;
  bool get isMenuOpen => _isMenuOpen;

  void setSelectedMenuIndex(int newIndex) {
    _selectedMenuIndex = newIndex;
    notifyListeners();
  }

  void openMenu() {
    _isMenuOpen = true;
    notifyListeners();
  }

  void closeMenu() {
    _isMenuOpen = false;
    notifyListeners();
  }
}
