import 'package:loja_online/src/models/item_model.dart';

ItemModel joelho = ItemModel(
  description: 'joelho de qualidade',
  imgUrl: 'assets/Construcao/joelho.jpeg',
  itemName: 'joelho de 25mm soldavel',
  price: 14.15,
  unit: 'UN',
);

ItemModel rejunte = ItemModel(
  description: 'Melhor rejunte para seu piso',
  imgUrl: 'assets/Construcao/rejunte.png',
  itemName: 'Rejunte',
  price: 15.78,
  unit: 'KG',
);

ItemModel telha = ItemModel(
  description: 'A melhor telha para sua casa',
  imgUrl: 'assets/Construcao/telha.jpg',
  itemName: 'Telha 2.44x1.10',
  price: 89.90,
  unit: 'UN',
);

ItemModel prego = ItemModel(
  description: 'Prego belgo de qualidade',
  imgUrl: 'assets/Construcao/prego.jpeg',
  itemName: 'Prego 19x36',
  price: 29.78,
  unit: 'KG',
);

ItemModel cimento = ItemModel(
  description: 'Cimento Cp II itau',
  imgUrl: 'assets/Construcao/cimento.jpg',
  itemName: 'Cimento',
  price: 60.00,
  unit: 'UN',
);

List<ItemModel> items = [
  joelho,
  rejunte,
  telha,
  prego,
  cimento,
];

List<String> categorias = [
  'Material p/ Construção',
  'Vidraçaria',
  'Marmoraria',
];
