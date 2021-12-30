import 'package:flutter/material.dart';

class UnknownPermissionError extends StatelessWidget {
  const UnknownPermissionError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('UNKNOWN PERMISSION ERROR'),
    );
  }
}
