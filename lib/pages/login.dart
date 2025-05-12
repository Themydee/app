import 'package:agri_learn/components/text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  //text edit controllers

  final TextEditingController emailController = TextEditingController();
   final TextEditingController passwordController = TextEditingController();

   LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),

            Text(
              'Agro Market App',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(height: 25),

            MyTextField(
              controller: emailController,
              hintText: 'Email',
              obscureText: false,
            ),

            const SizedBox(height: 25),

            MyTextField(
              controller: passwordController, 
              hintText: 'Password', 
              obscureText: true)
          ],
        ),
      ),
    );
  }
}
