import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/flat_repository/src/models/flat_model.dart';
import 'package:platonic/screen/flat/widgets/flat_accommodation.dart';

class FlatPropertiesScreen extends ConsumerWidget {
  const FlatPropertiesScreen({Key? key, required this.flat}) : super(key: key);

  final Flat flat;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 0, 16),
              child: Icon(Icons.keyboard_arrow_left_outlined, size: 30),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: FlatAccommodation(
                  showAllProperties: true,
                  flat: flat,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
