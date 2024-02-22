import 'package:flutter/material.dart';
import 'package:food/src/login_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
            key: controller.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Email Field
                TextFormField(
                  controller: controller.emailController,
                  decoration: const InputDecoration(
                      label: Text('Email'), hintText: 'Type Your Email'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Email is required';
                    }
                  },
                ),
                // Password Field
                TextFormField(
                    controller: controller.passwordController,
                    obscureText: true,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        label: Text('Password'),
                        hintText: 'Type your Password'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is required';
                      }
                    }),

                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () => controller.login(context),
                    child: const Text("Login"))
              ],
            )),
      ),
    );
  }
}
