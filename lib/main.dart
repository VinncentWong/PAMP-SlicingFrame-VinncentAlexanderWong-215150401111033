import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color.fromRGBO(129, 36, 138, 1)),
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Logo and title
                Image.asset("assets/logo.png"),
                const SizedBox(height: 24),
                const Text(
                  'Learn Graphic and UI/UX designing in Hindi\nfor free with live projects.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 32),

                // Email field
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Email Address',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 24.0),
                    suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 36),
                        child: Image.asset(
                          'assets/message.png',
                          width: 24,
                          height: 24,
                        )),
                  ),
                ),
                const SizedBox(height: 16),

                // Password field
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 24.0),
                    suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 36),
                        child: Image.asset(
                          'assets/lock.png',
                          width: 24,
                          height: 24,
                        )),
                  ),
                ),
                const SizedBox(height: 16),

                // Login button
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 120.0),
                  ),
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 16),

                // Forgot password
                GestureDetector(
                    child: const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.orange,
                      ),
                    ),
                  ],
                )),
                const SizedBox(height: 16),

                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    'or login with',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),

                // Social media buttons
                // Social media buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: IconButton(
                        icon: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 6, horizontal: 12),
                            child: Image.asset(
                              'assets/google.png',
                              width: 24,
                              height: 24,
                            )),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: IconButton(
                        icon: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 6, horizontal: 12),
                            child: Image.asset(
                              'assets/facebook.png',
                              width: 24,
                              height: 24,
                            )),
                        onPressed: () {
                          // Facebook login functionality
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: IconButton(
                        icon: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 6, horizontal: 12),
                            child: Image.asset(
                              'assets/twitter.png',
                              width: 24,
                              height: 24,
                            )),
                        onPressed: () {
                          // Twitter login functionality
                        },
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 16),

                // Register
                GestureDetector(
                  onTap: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Register Now ",
                        style: TextStyle(
                            color: Colors.orange,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.orange),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 48),

                // Terms & Conditions
                GestureDetector(
                  onTap: () {},
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "By signing up, you are agree with our ",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Terms & Conditions",
                        style: TextStyle(
                            color: Colors.orange,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.orange),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
