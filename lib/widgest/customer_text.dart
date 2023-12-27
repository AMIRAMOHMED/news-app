
import 'package:flutter/cupertino.dart';

class CustomerText extends StatelessWidget {
  final String message ;
  const CustomerText({
    super.key,required this.message
  });

  @override
  Widget build(BuildContext context) {
    return  SliverToBoxAdapter(
      child: Text(message),
    );
  }
}
