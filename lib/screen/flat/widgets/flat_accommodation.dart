import 'package:flutter/material.dart';
import 'package:platonic/providers/flat_provider/flat_item_provider.dart';
import '../../../domain/flat_repository/src/models/models.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/appcolors.dart';

class FlatAccommodation extends ConsumerWidget {
  const FlatAccommodation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final flat = ref.watch(flatItemProvider);
    final props = flat.flatProperties;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'what is in this accommodation?',
          style: TextStyle(fontSize: 20, color: AppColors.navyBlueTitle),
        ),
        const SizedBox(
          height: 16,
        ),
        _buildBuiltMeters(props.builtMeters),
        const SizedBox(
          height: 6,
        ),
        _buildUtilMeters(props.utilMeters),
        props.utilMeters != null
            ? const SizedBox(
                height: 6,
              )
            : const SizedBox.shrink(),
        _buildRooms(props.rooms),
        props.rooms != null
            ? const SizedBox(
                height: 6,
              )
            : const SizedBox.shrink(),
        _buildBathrooms(props.bathrooms),
        const SizedBox(
          height: 6,
        ),
        _buildBalcony(props.balcony),
        const SizedBox(
          height: 6,
        ),
        _buildFittedWardrobes(props.fittedWardrobes),
        const SizedBox(
          height: 6,
        ),
        _buildOrientation(props.flatOrientation),
      ],
    );
  }

  Row _buildOrientation(List<FlatOrientation> flatOrientation) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          Icons.wb_sunny_outlined,
          color: AppColors.navyBlueTitle,
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
            flatOrientation.isEmpty
                ? 'unspecified orientation'
                : flatOrientation.map((e) => e.name).toList().join(', ') +
                    ' orientation',
            style:
                const TextStyle(fontSize: 14, color: AppColors.navyBlueTitle))
      ],
    );
  }

  Row _buildFittedWardrobes(bool fittedWardrobes) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.checkroom_outlined,
          color: fittedWardrobes == true
              ? AppColors.navyBlueTitle
              : AppColors.strongWhite,
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
            fittedWardrobes == true
                ? 'has fitted wardrobes'
                : 'does not have fitted wardrobes',
            style: TextStyle(
              fontSize: 14,
              color: fittedWardrobes == true
                  ? AppColors.navyBlueTitle
                  : AppColors.strongWhite,
            ))
      ],
    );
  }

  Row _buildBalcony(bool balcony) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.balcony_outlined,
          color:
              balcony == true ? AppColors.navyBlueTitle : AppColors.strongWhite,
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(balcony == true ? 'has a balcony' : 'does not have any balcony',
            style: TextStyle(
                fontSize: 14,
                color: balcony == true
                    ? AppColors.navyBlueTitle
                    : AppColors.strongWhite))
      ],
    );
  }

  Row _buildBathrooms(int bathrooms) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          Icons.shower_outlined,
          color: AppColors.navyBlueTitle,
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text('$bathrooms bathrooms',
            style:
                const TextStyle(fontSize: 14, color: AppColors.navyBlueTitle))
      ],
    );
  }

  Widget _buildRooms(int? rooms) {
    if (rooms == null) return const SizedBox.shrink();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          Icons.bed_outlined,
          size: 20,
          color: AppColors.navyBlueTitle,
        ),
        const SizedBox(
          width: 6,
        ),
        Text('$rooms rooms',
            style:
                const TextStyle(fontSize: 14, color: AppColors.navyBlueTitle))
      ],
    );
  }

  Widget _buildUtilMeters(int? utilMeters) {
    if (utilMeters == null) return const SizedBox.shrink();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          Icons.construction_outlined,
          color: AppColors.navyBlueTitle,
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text('$utilMeters useful m2',
            style:
                const TextStyle(fontSize: 14, color: AppColors.navyBlueTitle)),
      ],
    );
  }

  Row _buildBuiltMeters(int builtMeters) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          Icons.home_max_outlined,
          color: AppColors.navyBlueTitle,
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text('$builtMeters m2 built',
            style:
                const TextStyle(fontSize: 14, color: AppColors.navyBlueTitle)),
      ],
    );
  }
}
