import 'package:loja_online/src/models/item_model.dart';

ItemModel piso = ItemModel(
  description: 'Melhor piso para revestimento',
  imgUrl:
      '/home/matheus-brandao/projetos-flutter/loja_online/assets/Construcao/piso.jpg',
  itemName: 'Piso Carrara',
  price: 29.78,
  unit: 'MT',
);

List<ItemModel> items = [
  piso,
];

List<String> categorias = [
  'Material p/ Construção',
  'Vidraçaria',
  'Marmoraria',
];
