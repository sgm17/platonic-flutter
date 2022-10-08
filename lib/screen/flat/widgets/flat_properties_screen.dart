import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/screen/flat/widgets/flat_accommodation.dart';

class FlatPropertiesScreen extends ConsumerWidget {
  const FlatPropertiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.fromLTRB(16, 20, 0, 0),
              child: Icon(Icons.keyboard_arrow_left_outlined, size: 30),
            ),
            SingleChildScrollView(
              child: FlatAccommodation(
                showAllProperties: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
