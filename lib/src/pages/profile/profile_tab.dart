import 'dart:async';
import 'package:loja_online/src/config/app_data.dart' as appData;
import 'package:flutter/material.dart';
import 'package:loja_online/src/pages/common_widgets/custom_text_field.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 62, 113),
        title: const Text('Perfil do usuário'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
        physics: const BouncingScrollPhysics(),

        // email
        children: [
          CustomTextField(
            initialValue: appData.user.email,
            readOnly: true,
            icon: Icons.email,
            label: 'Email',
          ),

          // usuario
          CustomTextField(
            initialValue: appData.user.name,
            readOnly: true,
            icon: Icons.person,
            label: 'Usuario',
          ),

          // telefone
          CustomTextField(
            initialValue: appData.user.celular,
            readOnly: true,
            icon: Icons.phone,
            label: 'Telefone',
          ),

          // CPF
          CustomTextField(
            initialValue: appData.user.cpf,
            readOnly: true,
            icon: Icons.file_copy,
            label: 'CPF',
            isSecret: true,
          ),

          // botao para atualizar senha
          SizedBox(
            height: 50,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  color: Color.fromARGB(255, 0, 62, 113),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {},
              child: const Text(
                'Atualizar senha',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
