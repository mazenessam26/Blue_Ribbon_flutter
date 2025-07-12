# blue_ribbon

A new Flutter project.

## Getting Started

### Features Implemented

1. **Login Screen**
   - Email and password input fields  
   - Form validation for required fields and email format  
   - Demo credentials: `user@example.com / password123`  
   - Error handling for incorrect or missing credentials  

2. **Restaurants List Screen**
   - Displays restaurant cards with name, description, image, and rating  
   - Default image for uninserted images by the restaurant  
   - Search functionality to filter restaurants  
   - Tap to navigate to restaurant products  
   - Logout functionality (top right of the screen)  

3. **Restaurant Products Screen**
   - Shows restaurant header with details  
   - Lists all products for the selected restaurant  
   - Search functionality for products  
   - Shopping cart icon with item count badge  
   - Tap products to view details  

4. **Product Details Screen**
   - Full product information display  
   - Quantity selector (increment/decrement)  
   - Add to cart functionality with confirmation  
   - Price calculation based on quantity and tax  

5. **Cart Screen** (button is on the top right)
   - Shows the added products in the cart (if any)  
   - Shows the total price with ability to increment/decrement quantity
   - Ability to remove a selected product/s from the cart

### Technical Implementation

**State Management - Riverpod**

- `AuthProvider` - Manages authentication state  
- `RestaurantsProvider` - Provides restaurant data  
- `ProductsProvider` - Provides product data with family provider for restaurant filtering  
- `CartProvider` - Manages shopping cart state  

### Data Models

- **Restaurant** - Restaurant entity with all required fields  
- **Product** - Product entity with restaurant association  
- **CartItem** - Cart item with product and quantity  

### Additional Features

- Search functionality for both restaurants and products  
- Shopping cart with quantity management  
- Image error handling with fallback icons  
- Responsive design with proper spacing and styling  
- Navigation flow between all screens  

### How to Run It

```bash
flutter run
```

### File Structure

```
lib/
├── main.dart
├── models/
│   ├── restaurant.dart
│   ├── product.dart
│   └── cart_item.dart
├── providers/
│   ├── auth_provider.dart
│   ├── restaurants_provider.dart
│   ├── products_provider.dart
│   └── cart_provider.dart
└── screens/
    ├── login_screen.dart
    ├── restaurants_screen.dart
    ├── restaurant_products_screen.dart
    ├── product_details_screen.dart
    └── cart_screen.dart
```

The app uses mock API dynamic data.

### Future Work
Checkout functionality
