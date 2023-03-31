import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/flat_repository/src/models/models.dart';
import 'package:platonic/providers/flat_provider/providers.dart';

class CreateCurrencyRow extends ConsumerWidget {
  const CreateCurrencyRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void toggleCurrency(Currency currency) {
      ref.read(flatCreateProvider.notifier).setCurrency(currency: currency);
    }

    final flatCreateState = ref.watch(flatCreateProvider);

    return Row(
      children: Currency.values.map((e) {
        final index = Currency.values.indexOf(e);
        return Padding(
          padding: EdgeInsets.only(
              right: index == Currency.values.length - 1 ? 0.0 : 16.0),
          child: GestureDetector(
            onTap: () => toggleCurrency(e),
            child: AnimatedContainer(
              height: 30.0,
              decoration: BoxDecoration(
                  color: flatCreateState.currency == e
                      ? const Color.fromARGB(255, 63, 141, 253)
                      : null,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                      color: flatCreateState.currency == e
                          ? const Color.fromARGB(255, 63, 141, 253)
                          : const Color.fromARGB(255, 43, 45, 46),
                      width: 1.0)),
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              alignment: Alignment.center,
              duration: const Duration(milliseconds: 300),
              child: Text(e.name.toUpperCase(),
                  style: const TextStyle(
                    overflow: TextOverflow.visible,
                    height: 1.3020000457763672,
                    fontSize: 14.0,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 255, 255, 255),
                  )),
            ),
          ),
        );
      }).toList(),
    );
  }
}
