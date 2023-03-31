import 'package:flutter/material.dart';
import 'package:platonic/domains/user_repository/src/models/models.dart';
import 'package:platonic/screens/detail_screen/widgets/widgets.dart';

class DetailAddTenantItem extends StatelessWidget {
  const DetailAddTenantItem(
      {Key? key, required this.flatId, required this.ownFlat})
      : super(key: key);

  final int flatId;
  final bool ownFlat;

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
          ownFlat: ownFlat,
          flatId: flatId,
        ))
      ],
    );
  }
}
