import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Kolom untuk Username
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            // Kolom untuk Password
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
              obscureText: true, // Menyembunyikan teks password
            ),
            const SizedBox(height: 20),
            // Tombol Login
            ElevatedButton(
              onPressed: () {
                _performLogin();
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }

  void _performLogin() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Logika untuk memeriksa username dan password
    // Misalnya, Anda bisa memeriksa dengan API atau database
    if (username == "admin" && password == "password") {
      // Jika login berhasil, navigasi ke halaman utama
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomePage()), // Ganti dengan halaman utama Anda
      );
    } else {
      // Jika login gagal, tampilkan snackbar
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Username atau password salah")),
      );
    }
  }
}

// Contoh halaman utama setelah login
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: const Text("Selamat datang di halaman utama!"),
      ),
    );
  }
}