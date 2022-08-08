import 'package:flutter/material.dart';
import 'package:loja_online/src/models/cart_item_model.dart';
import 'package:loja_online/src/pages/common_widgets/quantity_widget.dart';
import 'package:loja_online/src/services/utils_services.dart';

class CartTile extends StatelessWidget {
  final CartItemModel cartItem;

  CartTile({
    Key? key,
    required this.cartItem,
  }) : super(key: key);

  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        // imagem
        leading: Image.asset(
          cartItem.item.imgUrl,
          height: 60,
          width: 60,
        ),

        // titulo
        title: Text(
          cartItem.item.itemName,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),

        // total
        subtitle: Text(
          utilsServices.priceToCurrency(cartItem.totalPrice()),
          style: const TextStyle(
            color: Color.fromARGB(255, 0, 62, 113),
            fontWeight: FontWeight.bold,
          ),
        ),

        // quantidade
        trailing: QuantityWidget(
          suffixText: cartItem.item.unit,
          value: cartItem.quantity,
          result: ((quantity) {}),
        ),
      ),
    );
  }
}
