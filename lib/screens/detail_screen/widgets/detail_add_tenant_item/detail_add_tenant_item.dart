import 'package:flutter/material.dart';
import 'package:flutterapp/screens/detail_screen/widgets/detail_add_tenant_item/detail_add_tenant_circle.dart';
import 'package:flutterapp/screens/detail_screen/widgets/detail_add_tenant_item/detail_add_tenant_input.dart';

class DetailAddTenantItem extends StatelessWidget {
  const DetailAddTenantItem({Key? key, required this.flatId}) : super(key: key);

  final int flatId;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DetailAddTenantCircle(),
        SizedBox(
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
