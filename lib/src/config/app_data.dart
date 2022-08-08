import 'package:loja_online/src/models/cart_item_model.dart';
import 'package:loja_online/src/models/item_model.dart';

ItemModel joelho = ItemModel(
  description: 'joelho de qualidade',
  imgUrl: 'assets/Construcao/img_joelho1.png',
  itemName: 'joelho de 25mm soldavel',
  price: 14.15,
  unit: ' un',
);

ItemModel rejunte = ItemModel(
  description: 'Melhor rejunte para seu piso',
  imgUrl: 'assets/Construcao/img_rejunte.png',
  itemName: 'Rejunte',
  price: 15.78,
  unit: ' kg',
);

ItemModel telha = ItemModel(
  description: 'A melhor telha para sua casa',
  imgUrl: 'assets/Construcao/img_telha.png',
  itemName: 'Telha 2.44x1.10',
  price: 89.90,
  unit: ' un',
);

ItemModel prego = ItemModel(
  description: 'Prego belgo de qualidade',
  imgUrl: 'assets/Construcao/img_prego.png',
  itemName: 'Prego 19x36',
  price: 29.78,
  unit: ' kg',
);

ItemModel cimento = ItemModel(
  description: 'Cimento Cp II itau',
  imgUrl: 'assets/Construcao/img_cimento.png',
  itemName: 'Cimento',
  price: 60.00,
  unit: ' un',
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

List<CartItemModel> cartItems = [
  CartItemModel(
    item: joelho,
    quantity: 3,
  ),
  CartItemModel(
    item: cimento,
    quantity: 10,
  ),
  CartItemModel(
    item: prego,
    quantity: 1,
  ),
];
