import 'package:flutter/cupertino.dart';

class RowForConfirmScreen extends StatelessWidget {
  final Widget first;
  final Widget second;
  const RowForConfirmScreen({super.key, required this.first, required this.second});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          first,
          second

        ],
      ),
    );
  }
}
