import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/restaurant.dart';
final restaurantsProvider = Provider<List<Restaurant>>((ref) {
  return [
    Restaurant(
      id: '1',
      name: 'Pizza Palace',
      description: 'Authentic Italian pizza with fresh ingredients',
      imageUrl: 'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=400',
      rating: 4.5,
    ),
    Restaurant(
      id: '2',
      name: 'Burger House',
      description: 'Gourmet burgers and crispy fries',
      imageUrl: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=400',
      rating: 4.2,
    ),
    Restaurant(
      id: '3',
      name: 'Sushi Zen',
      description: 'Fresh sushi and Japanese cuisine',
      imageUrl: 'https://images.unsplash.com/photo-1579584425555-c3ce17fd4351?w=400',
      rating: 4.8,
    ),
    Restaurant(
      id: '4',
      name: 'Taco Fiesta',
      description: 'Authentic Mexican street food',
      imageUrl: 'https://images.unsplash.com/photo-1565299624946-b28f40a0ca4b?w=400',
      rating: 4.3,
    ),
  ];
});