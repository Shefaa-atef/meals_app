import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';

class FavoriteMealProvider extends StateNotifier<List<Meal>> {
  FavoriteMealProvider() : super([]); //initial state []
  bool toggleMealFavoriteStatus(Meal meal) {
    final mealsFavorite = state.contains(meal);
//remove a meal
    if (mealsFavorite) {
      state = state.where((m) => m.id != meal.id).toList();
      return false;
    } else {
      state = [...state, meal];
      return true;
    }
  }
}

final favoriteMealProvider =
    StateNotifierProvider<FavoriteMealProvider, List<Meal>>((ref) {
  return FavoriteMealProvider();
});
