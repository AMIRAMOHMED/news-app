import 'package:flutter/material.dart';

class CircularIndicator extends StatelessWidget {
  const CircularIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height /1.2,
      child: const Center(
        child: CircularProgressIndicator(


        ),
      ),
    );
  }
}
