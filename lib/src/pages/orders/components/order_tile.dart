import 'package:flutter/material.dart';
import 'package:loja_online/src/models/cart_item_model.dart';
import 'package:loja_online/src/models/order_model.dart';
import 'package:loja_online/src/services/utils_services.dart';

class OrderTile extends StatelessWidget {
  final OrderModel order;
  OrderTile({
    Key? key,
    required this.order,
  }) : super(key: key);

  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Orçamento: ${order.name}'),
              Text(
                utilsServices.formatDateTime(order.createdDateTime),
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          childrenPadding: const EdgeInsets.fromLTRB(16, 10, 10, 10),
          children: [
            SizedBox(
              height: 150,
              width: 350,
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: ListView(
                      children: order.items.map((orderItem) {
                        return _OrderWidget(
                          utilsServices: utilsServices,
                          orderItem: orderItem,
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _OrderWidget extends StatelessWidget {
  const _OrderWidget(
      {Key? key, required this.utilsServices, required this.orderItem})
      : super(key: key);

  final UtilsServices utilsServices;
  final CartItemModel orderItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Text(
            '${orderItem.quantity} ${orderItem.item.unit} ',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(orderItem.item.itemName),
          Text(
            utilsServices.priceToCurrency(
              orderItem.totalPrice(),
            ),
          ),
        ],
      ),
    );
  }
}
