import 'package:flutter/material.dart';
import 'package:rider/model/history_model.dart';

import 'booking_card.dart';


class Pending extends StatelessWidget {
  const Pending({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: delivered.length,
      itemBuilder: (context, index) {
        BookingItems item = delivered[index];
        return  Padding(
          padding:const EdgeInsets.symmetric(vertical: 10),
          child: BookingCard(
            item: item,
          ),
        );
      },
    );
  }
}
