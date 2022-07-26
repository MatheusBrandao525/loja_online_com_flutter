import 'package:flutter/material.dart';
import 'package:loja_online/src/auth/components/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 62, 113),
      body: Column(children: [
        Expanded(
          child: Container(),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 40,
            ),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(45))),
            child: Column(children: const [
              // email
              CustomTextField(
                icon: Icons.email,
                label: 'Email',
              ),
              // senha
              CustomTextField(
                icon: Icons.lock,
                label: 'Senha',
                isSecret: true,
              ),
            ]),
          ),
        ),
      ]),
    );
  }
}
