import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthNotifier extends StateNotifier<bool> {
  AuthNotifier() : super(false);

  bool login(String email, String password) {
    // Mock authentication logic
    if (email == 'user@example.com' && password == 'password123') {
      state = true;
      return true;
    }
    return false;
  }

  void logout() {
    state = false;
  }
}

final authProvider = StateNotifierProvider<AuthNotifier, bool>((ref) {
  return AuthNotifier();
});
