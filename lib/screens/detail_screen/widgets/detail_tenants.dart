import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domains/user_repository/src/models/models.dart';
import 'package:platonic/providers/chat_provider/active_user2_provider.dart';
import 'package:platonic/providers/flat_provider/providers.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'widgets.dart';

/* Frame Frame 2
    Autogenerated by FlutLab FTF Generator
  */
class DetailTenants extends ConsumerWidget {
  final List<AppUser> tenants;
  final int flatId;
  final AppUser owner;

  const DetailTenants(
      {Key? key,
      required this.tenants,
      required this.flatId,
      required this.owner})
      : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.read(appUserProvider);

    final ownFlat = userState.id == owner.id;

    Future<bool?> confirmDismiss({required String email, required int flatId}) {
      return ref.read(flatProvider.notifier).addOrRemoveTenantFromFlat(
          email: email, flatId: flatId, isAdd: false);
    }

    void toggleStartChat({required AppUser user}) {
      if (userState.id != user.id) {
        ref.read(activeUser2Provider.notifier).state = user;
        Navigator.pushNamed(context, '/ChatScreen');
      }
    }

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Column(
        children: tenants.map((tenant) {
          final index = tenants.indexOf(tenant);
          return Padding(
            padding: EdgeInsets.only(
                bottom: (index == tenants.length - 1) ? 16.0 : 0.0),
            child: ownFlat
                ? Dismissible(
                    confirmDismiss: (_) =>
                        confirmDismiss(email: tenant.email, flatId: flatId),
                    background: Container(
                      color: Colors.red,
                    ),
                    key: Key(index.toString()),
                    child: SizedBox(
                        height: 40.0,
                        child: DetailTenantItem(
                          tenant: tenant,
                        )),
                  )
                : GestureDetector(
                    onTap: () => toggleStartChat(user: tenant),
                    child: SizedBox(
                        height: 40.0,
                        child: DetailTenantItem(
                          tenant: tenant,
                        )),
                  ),
          );
        }).toList(),
      ),
      DetailAddTenantItem(
        flatId: flatId,
        ownFlat: ownFlat,
      ),
    ]);
  }
}
