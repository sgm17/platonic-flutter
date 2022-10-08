import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/flat_provider/flat_item_provider.dart';

class FlatTransport extends ConsumerWidget {
  const FlatTransport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flat = ref.watch(flatItemProvider);

    return Container();
  }
}
