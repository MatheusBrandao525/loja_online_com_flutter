import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:loja_online/src/home/components/category_tile.dart';

class HomeTab extends StatefulWidget {
  HomeTab({Key? key}) : super(key: key);

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<String> categorias = [
    'Material p/ Construção',
    'Vidraçaria',
    'Marmoraria',
  ];

  String selectedCategory = 'Vidraçaria';

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
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              right: 25,
            ),
            child: GestureDetector(
              onTap: () {},
              child: Badge(
                badgeColor: Colors.red,
                badgeContent: const Text(
                  '1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                  ),
                ),
                child: const Icon(
                  Icons.shopping_cart,
                  color: Color.fromARGB(255, 0, 62, 113),
                ),
              ),
            ),
          ),
        ],
      ),

      // Campo pesquisa
      body: Column(
        children: [
          // Campo pesquisa
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                isDense: true,
                hintText: 'Pesquise aqui...',
                hintStyle: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 14,
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 0, 62, 113),
                  size: 21,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
              ),
            ),
          ),

          // Categorias
          Container(
            padding: const EdgeInsets.only(left: 25),
            child: SizedBox(
              height: 40,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return CategoryTile(
                      onPressed: () {
                        setState(() {
                          selectedCategory = categorias[index];
                        });
                      },
                      category: categorias[index],
                      isSelected: categorias[index] == selectedCategory,
                    );
                  },
                  separatorBuilder: (_, index) => const SizedBox(width: 10),
                  itemCount: categorias.length),
            ),
          ),
          // Grid
        ],
      ),
    );
  }
}
