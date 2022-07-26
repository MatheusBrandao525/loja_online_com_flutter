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
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 40,
          ),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(45))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // email
              const CustomTextField(
                icon: Icons.email,
                label: 'Email',
              ),
              // senha
              const CustomTextField(
                icon: Icons.lock,
                label: 'Senha',
                isSecret: true,
              ),

              // Botao entrar
              SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Entrar',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Esqueceu a senha?',
                    style: TextStyle(color: Color.fromARGB(255, 101, 116, 129)),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey.withAlpha(90),
                        thickness: 2,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: Text('Ou'),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.grey.withAlpha(90),
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
              ),

              // Botao criar conta
              SizedBox(
                height: 50,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      side: const BorderSide(
                        width: 2,
                        color: Colors.blue,
                      )),
                  onPressed: () {},
                  child: const Text(
                    'Criar conta',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
