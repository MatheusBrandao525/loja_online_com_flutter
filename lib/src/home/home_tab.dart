import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'Talismã',
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 62, 113),
                  fontSize: 26,
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Color.fromARGB(255, 0, 62, 113),
            ),
          ),
        ],
      ),

      // Campo pesquisa

      // Categorias

      // Grid
    );
  }
}
