import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/product.dart';
final productsProvider = Provider<List<Product>>((ref) {
  return [
    // Pizza Palace products
    Product(
      id: '1',
      name: 'Margherita Pizza',
      description: 'Classic pizza with fresh tomatoes, mozzarella, and basil',
      imageUrl: 'https://images.unsplash.com/photo-1604382355076-af4b0eb60143?w=400',
      price: 12.99,
      restaurantId: '1',
    ),
    Product(
      id: '2',
      name: 'Pepperoni Pizza',
      description: 'Spicy pepperoni with mozzarella cheese',
      imageUrl: 'https://images.unsplash.com/photo-1628840042765-356cda07504e?w=400',
      price: 14.99,
      restaurantId: '1',
    ),
    
    // Burger House products
    Product(
      id: '3',
      name: 'Classic Cheeseburger',
      description: 'Beef patty with cheese, lettuce, tomato, and onion',
      imageUrl: 'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=400',
      price: 9.99,
      restaurantId: '2',
    ),
    Product(
      id: '4',
      name: 'Bacon Deluxe',
      description: 'Double beef patty with bacon and special sauce',
      imageUrl: 'https://images.unsplash.com/photo-1550547660-d9450f859349?w=400',
      price: 12.99,
      restaurantId: '2',
    ),
    
    // Sushi Zen products
    Product(
      id: '5',
      name: 'Salmon Roll',
      description: 'Fresh salmon with avocado and cucumber',
      imageUrl: 'https://images.unsplash.com/photo-1579584425555-c3ce17fd4351?w=400',
      price: 8.99,
      restaurantId: '3',
    ),
    Product(
      id: '6',
      name: 'Dragon Roll',
      description: 'Eel and cucumber with avocado on top',
      imageUrl: 'https://images.unsplash.com/photo-1617196034796-73dfa7b1fd56?w=400',
      price: 13.99,
      restaurantId: '3',
    ),
    
    // Taco Fiesta products
    Product(
      id: '7',
      name: 'Beef Tacos',
      description: 'Seasoned ground beef with lettuce, cheese, and salsa',
      imageUrl: 'https://images.unsplash.com/photo-1565299624946-b28f40a0ca4b?w=400',
      price: 7.99,
      restaurantId: '4',
    ),
    Product(
      id: '8',
      name: 'Chicken Quesadilla',
      description: 'Grilled chicken with cheese in a flour tortilla',
      imageUrl: 'https://images.unsplash.com/photo-1618040996337-56904b7850b9?w=400',
      price: 9.99,
      restaurantId: '4',
    ),
  ];
});

final restaurantProductsProvider = Provider.family<List<Product>, String>((ref, restaurantId) {
  final products = ref.watch(productsProvider);
  return products.where((product) => product.restaurantId == restaurantId).toList();
});
