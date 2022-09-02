import 'package:loja_online/src/models/cart_item_model.dart';
import 'package:loja_online/src/models/item_model.dart';
import 'package:loja_online/src/models/order_model.dart';
import 'package:loja_online/src/models/uder_model.dart';

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
  'Banheiro',
  'Churrasqueiras',
  'Decoração',
  'Eletrica',
  'Encanação/Esg',
  'Encanação/Sold',
  'Ferragens',
  'Ferramentas',
  'Material p/ Construção',
  'Marmoraria',
  'Portas',
  'Tintas',
  'Vidraçaria',
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

UserModel user = UserModel(
  celular: '993203891',
  cpf: '000.455.745-74',
  email: 'mafe123silva@gmail.com',
  name: 'Matheus Felipe',
  senha: 'exagon10@',
);

List<OrderModel> orders = [
  OrderModel(
    copyAndPaste: 'wsew6s65sds87f7',
    createdDateTime: DateTime.parse(
      '2022-08-11 10:34:42.000',
    ),
    overdueDateTime: DateTime.parse(
      '2022-22-08 11:53:05.000',
    ),
    id: 'sfuh37h73r83',
    name: 'Matheus',
    status: 'pending_payment',
    total: 0,
    items: [
      CartItemModel(
        item: joelho,
        quantity: 2,
      ),
      CartItemModel(
        item: cimento,
        quantity: 2,
      ),
    ],
  )
];
