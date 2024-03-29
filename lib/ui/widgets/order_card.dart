import 'package:ali_poster/theme/color.dart';
import 'package:ali_poster/theme/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  OrderCard({
    Key? key,
    this.orderId,
    this.cost,
    this.destination,
    this.orderedTime,
    this.clientContact,
    required this.onPressed,
  }) : super(key: key);

  final String? orderId;
  final int? cost;
  final String? destination;
  final String? orderedTime;
  final String? clientContact;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Заказ №$orderId',
                      style: AppTextStyle.orderTextStyle,
                    ),
                    const SizedBox(width: 24.0),
                    Text(
                      '$cost Сум',
                      style: AppTextStyle.orderTextStyle,
                    ),
                  ],
                ),
                Text(
                  'Адрес: $destination!',
                  style: AppTextStyle.orderTextStyle,
                ),
                Text(
                  'Время заявки: $orderedTime!',
                  style: AppTextStyle.orderTextStyle,
                ),
                Text(
                  'Контакты клиена ${clientContact ?? ""}',
                  style: AppTextStyle.orderTextStyle,
                ),
              ],
            ),
            Material(
              shape: const CircleBorder(),
              color: AppColors.green,
              child: IconButton(
                iconSize: 32.0,
                splashRadius: 25.0,
                color: AppColors.red,
                onPressed: onPressed,
                icon: const Icon(
                  Icons.add,
                  color: AppColors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
