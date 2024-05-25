import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class KeranjangListItemView extends StatelessWidget {
  const KeranjangListItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            width: 57,
            height: 57,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(
                color: const Color(0xfff0f0f0),
              ),
            ),
          ),
          const SizedBox(width: 10),
          const Column(
            children: [
              Text('AAA'),
              Text('AAA'),
              Text('AAA'),
              Text('AAA'),
            ],
          )
        ],
      ),
    );
  }
}
