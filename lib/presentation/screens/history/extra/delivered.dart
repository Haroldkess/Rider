import 'package:flutter/material.dart';
import 'package:rider/model/history_model.dart';


import 'booking_card.dart';
import 'cancelled_card.dart';

class Delivered extends StatelessWidget {
  const Delivered({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: closed.length,
      itemBuilder: (context, index) {
        BookingItems item = closed[index];
        return  Padding(
          padding:const EdgeInsets.symmetric(vertical: 10),
          child: CancelledCard(
            item: item,
          ),
        );
      },
    );
  }
}
