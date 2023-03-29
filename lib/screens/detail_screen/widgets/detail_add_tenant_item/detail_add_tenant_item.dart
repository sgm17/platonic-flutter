import 'package:flutter/material.dart';
import 'package:platonic/screens/detail_screen/widgets/widgets.dart';

class DetailAddTenantItem extends StatelessWidget {
  const DetailAddTenantItem({Key? key, required this.flatId}) : super(key: key);

  final int flatId;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const DetailAddTenantCircle(),
        const SizedBox(
          width: 6.0,
        ),
        Expanded(
            child: DetailAddTenantInput(
          flatId: flatId,
        ))
      ],
    );
  }
}
