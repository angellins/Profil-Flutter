class AuthRepository {
  Future<bool> login(String email, String password) async {
    await Future.delayed(const Duration(seconds: 2));

    if (email == "angel@gmail.com" && password == "123") {
      return true;
    } else {
      throw Exception("Email atau password salah");
    }
  }
}