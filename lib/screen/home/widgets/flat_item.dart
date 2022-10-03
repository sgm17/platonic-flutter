import '../../../domain/flat_repository/src/models/models.dart';
import 'package:flutter/material.dart';

class FlatItem extends StatelessWidget {
  const FlatItem({Key? key, required FlatItemProperties flatItemProperties})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class FlatItemProperties {
  final Flat flat;
  final bool first;
  final bool last;

  FlatItemProperties(this.flat, this.first, this.last);
}
