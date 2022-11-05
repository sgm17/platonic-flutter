import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/appcolors.dart';
import 'package:platonic/providers/flat_provider/flat_item_provider.dart';
import '../../../domain/user_repository/src/models/models.dart';

class FlatTenants extends ConsumerWidget {
  const FlatTenants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flat = ref.watch(flatItemProvider);
    return SizedBox(
      height: 246,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('with whom will i share a flat',
              style: TextStyle(color: AppColors.navyBlueTitle, fontSize: 20)),
          const SizedBox(
            height: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${flat.tenants.length} / ${flat.maxTenants} tenants",
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.navyBlueTitle)),
              Text(
                  "${flat.tenants.where((e) => e.sex == Sex.female).toList().length} girls and ${flat.tenants.where((e) => e.sex == Sex.male).toList().length} boys",
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: AppColors.navyBlueTitle)),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: flat.tenants.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final tenant = flat.tenants[index];
                return _buildTenantsItem(tenant);
              },
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTenantsItem(User tenant) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.strongWhite)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundImage:
                      AssetImage('assets/images/defaultprofile.jpg'),
                ),
                const SizedBox(
                  width: 6,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tenant.username,
                        style: const TextStyle(
                            color: AppColors.navyBlueTitle,
                            fontWeight: FontWeight.bold,
                            fontSize: 14)),
                    const SizedBox(
                      height: 4,
                    ),
                    SizedBox(
                      width: 200,
                      child: Text(tenant.universityName,
                          style: const TextStyle(
                              color: AppColors.navyBlueTitle,
                              fontWeight: FontWeight.w400,
                              fontSize: 13)),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () => print('object'),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.navyBlueTitle)),
                child: const Text(
                  'start talking',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.navyBlueTitle,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
