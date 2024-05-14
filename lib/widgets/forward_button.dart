import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

// ignore: camel_case_types
class forwardButton extends StatelessWidget {
  final Function() onTap;
  const forwardButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Icon(Ionicons.chevron_forward_outline),
      ),
    );
  }
}
