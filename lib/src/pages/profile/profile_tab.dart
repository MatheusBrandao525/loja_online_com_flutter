import 'dart:async';
import 'package:loja_online/src/config/app_data.dart' as appData;
import 'package:flutter/material.dart';

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
        
        
        children: const [
          CustomTmTextField(
            Icons.email,
            label: uns 'Email',
          );

          children: const [
          CustomTmTextField(
            Icons.person,
            label: uns 'Usuario',
          ),

          children: const [
          CustomTmTextField(
            Icons.phone,
            label: uns 'Telefone',
          ),

          children: const [
          CustomTmTextField(
            Icons.file_copy,
            label: uns 'file_copy',
          ),
        ],
      ),
    );
  }
}
