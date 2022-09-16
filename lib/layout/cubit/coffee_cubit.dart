import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gdsc/modules/Cart/Cart.dart';
import 'package:gdsc/modules/Favourite/Favourite.dart';
import 'package:gdsc/modules/Profile/Profile.dart';
import 'package:meta/meta.dart';

import '../../modules/homePage/HomePage.dart';

part 'coffee_state.dart';

class CoffeeCubit extends Cubit<CoffeeState> {
  int currentIndex=0;
  List<Widget> Screen = [
    HomePage(),
    Favourite(),
    Cart(),
    Profile()
  ];
  List<BottomNavigationBarItem> bottomItem = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favourite"),
    BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart_outlined), label: "Cart"),
    BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: "Profile"),
  ];
  CoffeeCubit() : super(CoffeeInitial());
  ChangeIndex(Index) {
    currentIndex = Index;
    emit(NewsbottomNav());
  }
  static CoffeeCubit get(context) => BlocProvider.of(context);
}
