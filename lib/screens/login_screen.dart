import 'package:flutter/material.dart';
import 'main_screen.dart';
import 'register_screen.dart';
import 'forgot_password_screen.dart';

class LoginScreen extends StatelessWidget {
  final bool isDarkMode;
  final Function(bool) toggleTheme;

  const LoginScreen({
    super.key,
    required this.isDarkMode,
    required this.toggleTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),

        child: Column(
          children: [
            const SizedBox(height: 60),

            Container(
              width: 100,
              height: 100,

              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,

                shape: BoxShape.circle,
              ),

              child: const Icon(Icons.school, size: 50),
            ),

            const SizedBox(height: 24),

            const Text(
              "Welcome Back",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            const Text(
              "Login to continue learning",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 40),

            TextField(
              decoration: InputDecoration(
                labelText: "Email",

                prefixIcon: const Icon(Icons.email_outlined),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),

            const SizedBox(height: 16),

            TextField(
              obscureText: true,

              decoration: InputDecoration(
                labelText: "Password",

                prefixIcon: const Icon(Icons.lock_outline),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),

            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              height: 52,

              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,

                    MaterialPageRoute(
                      builder: (context) => MainScreen(
                        isDarkMode: isDarkMode,

                        toggleTheme: toggleTheme,
                      ),
                    ),
                  );
                },

                child: const Text("Login"),
              ),
            ),

            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterScreen(),
                      ),
                    );
                  },

                  child: const Text("Create Account"),
                ),

                const SizedBox(width: 8),

                Container(width: 1, height: 20, color: Colors.grey),

                const SizedBox(width: 8),

                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,

                      MaterialPageRoute(
                        builder: (context) => const ForgotPasswordScreen(),
                      ),
                    );
                  },

                  child: const Text("Forgot Password"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
