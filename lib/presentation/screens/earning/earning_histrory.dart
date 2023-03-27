import 'package:flutter/material.dart';
import 'package:rider/model/earning_history.dart';
import 'package:rider/presentation/screens/earning/extras/earning_card.dart';

class EarningHistoryList extends StatefulWidget {
  const EarningHistoryList({super.key});

  @override
  State<EarningHistoryList> createState() => _EarningHistoryListState();
}

class _EarningHistoryListState extends State<EarningHistoryList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: earning.length,
      itemBuilder: (context, index) {
        EarningHistory earned = earning[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: EarningCard(
            history: earned,
          ),
        );
      },
    );
  }
}
