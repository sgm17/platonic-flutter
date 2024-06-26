import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:platonic/domains/user_repository/user_repository.dart';
import 'package:platonic/providers/chat_provider/active_user2_provider.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'package:platonic/screens/create_flat_screen/step1_screen/widgets/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'widgets.dart';

/* Rectangle Rectangle 22
    Autogenerated by FlutLab FTF Generator
  */
class DetailPrice extends ConsumerWidget {
  final int principalCost, electricityCost;
  final AppUser owner;

  const DetailPrice(
      {Key? key,
      required this.principalCost,
      required this.electricityCost,
      required this.owner})
      : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void toggleContact() {
      final userState = ref.read(appUserProvider);

      if (userState.id != owner.id) {
        ref.read(activeUser2Provider.notifier).state = owner;

        Navigator.pushNamed(context, '/ChatScreen');
      }
    }

    return Container(
      padding: const EdgeInsets.all(
        18.0,
      ),
      height: 81.0,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 27, 26, 29),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(63, 0, 0, 0),
            offset: Offset(0.0, -4.0),
            blurRadius: 8.0,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 23.0,
                child: DetailPriceTitle(),
              ),
              const SizedBox(
                height: 5.0,
              ),
              SizedBox(
                height: 26.0,
                child: DetailPricePerMonthTitle(
                    principalCost: principalCost,
                    electricityCost: electricityCost),
              ),
            ],
          ),
          GestureDetector(
            onTap: toggleContact,
            child: SizedBox(
                width: 125.0,
                child: CreateFlatDetailButton(
                    text: AppLocalizations.of(context)!.detailContactButton)),
          )
        ],
      ),
    );
  }
}
