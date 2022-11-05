import '../../../domain/flat_repository/src/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/appcolors.dart';

class FlatAccomodationExtended extends ConsumerWidget {
  const FlatAccomodationExtended({Key? key, required this.flat})
      : super(key: key);
  final Flat flat;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final props = flat.flatProperties;
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const Text(
        'what is in this accommodation?',
        style: TextStyle(fontSize: 20, color: AppColors.navyBlueTitle),
      ),
      const SizedBox(
        height: 16,
      ),
      const Text(
        'flat properties',
        style: TextStyle(fontSize: 16, color: AppColors.navyBlueTitle),
      ),
      const SizedBox(
        height: 16,
      ),
      _buildRooms(props.rooms),
      props.rooms != null
          ? const Padding(
              padding: EdgeInsets.symmetric(vertical: 3.0),
              child: Divider(
                color: AppColors.strongWhite,
                thickness: 1,
              ),
            )
          : const SizedBox.shrink(),
      _buildBathrooms(props.bathrooms),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 3.0),
        child: Divider(
          color: AppColors.strongWhite,
          thickness: 1,
        ),
      ),
      _buildBalcony(props.balcony),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 3.0),
        child: Divider(
          color: AppColors.strongWhite,
          thickness: 1,
        ),
      ),
      _buildFittedWardrobes(props.fittedWardrobes),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 3.0),
        child: Divider(
          color: AppColors.strongWhite,
          thickness: 1,
        ),
      ),
      _buildFurnished(props.furnished),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 3.0),
        child: Divider(
          color: AppColors.strongWhite,
          thickness: 1,
        ),
      ),
      _buildKitchen(props.equippedKitchen),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 3.0),
        child: Divider(
          color: AppColors.strongWhite,
          thickness: 1,
        ),
      ),
      _buildHeating(props.heating, props.heatingType),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 3.0),
        child: Divider(
          color: AppColors.strongWhite,
          thickness: 1,
        ),
      ),
      _buildAirConditioning(props.airConditioning),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 3.0),
        child: Divider(
          color: AppColors.strongWhite,
          thickness: 1,
        ),
      ),
      _buildTerrace(props.terrace),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 3.0),
        child: Divider(
          color: AppColors.strongWhite,
          thickness: 1,
        ),
      ),
      _buildConsumption(props.consumption),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 3.0),
        child: Divider(
          color: AppColors.strongWhite,
          thickness: 1,
        ),
      ),
      _buildEmissions(props.emissions),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 3.0),
        child: Divider(
          color: AppColors.strongWhite,
          thickness: 1,
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      const Text(
        'flat services',
        style: TextStyle(fontSize: 16, color: AppColors.navyBlueTitle),
      ),
      const SizedBox(
        height: 16,
      ),
      _buildElevator(props.elevator),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 3.0),
        child: Divider(
          color: AppColors.strongWhite,
          thickness: 1,
        ),
      ),
      _buildGarage(props.garage),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 3.0),
        child: Divider(
          color: AppColors.strongWhite,
          thickness: 1,
        ),
      ),
      _buildSwimmingPool(props.swimmingPool),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 3.0),
        child: Divider(
          color: AppColors.strongWhite,
          thickness: 1,
        ),
      ),
      _buildStorageRoom(props.storageRoom),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 3.0),
        child: Divider(
          color: AppColors.strongWhite,
          thickness: 1,
        ),
      ),
      _buildGreenAreas(props.greenZones),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 3.0),
        child: Divider(
          color: AppColors.strongWhite,
          thickness: 1,
        ),
      ),
      const SizedBox(
        height: 16,
      ),
      const Text(
        'building properties',
        style: TextStyle(fontSize: 16, color: AppColors.navyBlueTitle),
      ),
      const SizedBox(
        height: 16,
      ),
      _buildBuiltMeters(props.builtMeters),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 3.0),
        child: Divider(
          color: AppColors.strongWhite,
          thickness: 1,
        ),
      ),
      _buildUtilMeters(props.utilMeters),
      props.utilMeters != null
          ? const Padding(
              padding: EdgeInsets.symmetric(vertical: 3.0),
              child: Divider(
                color: AppColors.strongWhite,
                thickness: 1,
              ),
            )
          : const SizedBox.shrink(),
      _buildBuiltYear(props.builtYear),
      props.builtYear != null
          ? const Padding(
              padding: EdgeInsets.symmetric(vertical: 3.0),
              child: Divider(
                color: AppColors.strongWhite,
                thickness: 1,
              ),
            )
          : const SizedBox.shrink(),
      _buildFloor(props.floorLocation, props.floor),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 3.0),
        child: Divider(
          color: AppColors.strongWhite,
          thickness: 1,
        ),
      ),
      _buildOrientation(props.flatOrientation),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 3.0),
        child: Divider(
          color: AppColors.strongWhite,
          thickness: 1,
        ),
      ),
      _buildDisposition(props.disposition),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 3.0),
        child: Divider(
          color: AppColors.strongWhite,
          thickness: 1,
        ),
      ),
    ]);
  }

  Row _buildEmissions(EnergyCertificate emissions) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          Icons.eco_outlined,
          color: AppColors.navyBlueTitle,
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
            emissions == EnergyCertificate.inProcess
                ? 'emission certificate in process'
                : emissions == EnergyCertificate.notIndicated
                    ? 'emission certificate not indicated'
                    : "emission ${emissions.name}",
            style:
                const TextStyle(fontSize: 14, color: AppColors.navyBlueTitle))
      ],
    );
  }

  Row _buildConsumption(EnergyCertificate consumption) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          Icons.energy_savings_leaf_outlined,
          color: AppColors.navyBlueTitle,
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
            consumption == EnergyCertificate.inProcess
                ? 'consumption certificate in process'
                : consumption == EnergyCertificate.notIndicated
                    ? 'consumption certificate not indicated'
                    : "consumption ${consumption.name}",
            style:
                const TextStyle(fontSize: 14, color: AppColors.navyBlueTitle))
      ],
    );
  }

  Row _buildGreenAreas(bool greenZones) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.nature_outlined,
          color: greenZones == true
              ? AppColors.navyBlueTitle
              : AppColors.strongWhite,
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
            greenZones == true
                ? 'has green areas'
                : 'does not have green areas',
            style: TextStyle(
              fontSize: 14,
              color: greenZones == true
                  ? AppColors.navyBlueTitle
                  : AppColors.strongWhite,
            ))
      ],
    );
  }

  Row _buildGarage(bool garage) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.meeting_room_outlined,
          color:
              garage == true ? AppColors.navyBlueTitle : AppColors.strongWhite,
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(garage == true ? 'has a garage' : 'does not have a garage',
            style: TextStyle(
              fontSize: 14,
              color: garage == true
                  ? AppColors.navyBlueTitle
                  : AppColors.strongWhite,
            ))
      ],
    );
  }

  Row _buildStorageRoom(bool storageRoom) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.meeting_room_outlined,
          color: storageRoom == true
              ? AppColors.navyBlueTitle
              : AppColors.strongWhite,
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
            storageRoom == true
                ? 'has a storage room'
                : 'does not have a storage room',
            style: TextStyle(
              fontSize: 14,
              color: storageRoom == true
                  ? AppColors.navyBlueTitle
                  : AppColors.strongWhite,
            ))
      ],
    );
  }

  Row _buildSwimmingPool(bool swimmingPool) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.pool_outlined,
          color: swimmingPool == true
              ? AppColors.navyBlueTitle
              : AppColors.strongWhite,
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(swimmingPool == true ? 'has a pool' : 'does not have a pool',
            style: TextStyle(
              fontSize: 14,
              color: swimmingPool == true
                  ? AppColors.navyBlueTitle
                  : AppColors.strongWhite,
            ))
      ],
    );
  }

  Row _buildTerrace(bool terrace) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.fence,
          color:
              terrace == true ? AppColors.navyBlueTitle : AppColors.strongWhite,
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(terrace == true ? 'has a terrace' : 'does not have a terrace',
            style: TextStyle(
              fontSize: 14,
              color: terrace == true
                  ? AppColors.navyBlueTitle
                  : AppColors.strongWhite,
            ))
      ],
    );
  }

  Row _buildAirConditioning(bool airConditioning) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.air_outlined,
          color: airConditioning == true
              ? AppColors.navyBlueTitle
              : AppColors.strongWhite,
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
            airConditioning == true
                ? 'has air conditioner'
                : 'does not have air conditioning',
            style: TextStyle(
              fontSize: 14,
              color: airConditioning == true
                  ? AppColors.navyBlueTitle
                  : AppColors.strongWhite,
            ))
      ],
    );
  }

  Row _buildElevator(bool elevator) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.elevator_outlined,
          color: elevator == true
              ? AppColors.navyBlueTitle
              : AppColors.strongWhite,
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(elevator == true ? 'has an elevator' : 'does not have an elevator',
            style: TextStyle(
              fontSize: 14,
              color: elevator == true
                  ? AppColors.navyBlueTitle
                  : AppColors.strongWhite,
            ))
      ],
    );
  }

  Row _buildFloor(FloorLocation floorLocation, int? floor) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          Icons.apartment_outlined,
          color: AppColors.navyBlueTitle,
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
            floorLocation == FloorLocation.floor && floor != null
                ? 'the floor is number $floor'
                : floorLocation == FloorLocation.attic
                    ? 'the floor is an attic'
                    : 'the floor is a low',
            style:
                const TextStyle(fontSize: 14, color: AppColors.navyBlueTitle))
      ],
    );
  }

  Row _buildHeating(bool heating, HeatingType? heatingType) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.local_fire_department_outlined,
          color:
              heating == true ? AppColors.navyBlueTitle : AppColors.strongWhite,
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
            heating == true &&
                    heatingType != HeatingType.none &&
                    heatingType != null
                ? heatingType == HeatingType.naturalGas
                    ? 'has natural gas heating'
                    : "${heatingType.name} heating"
                : 'does not have heating',
            style: TextStyle(
              fontSize: 14,
              color: heating == true
                  ? AppColors.navyBlueTitle
                  : AppColors.strongWhite,
            ))
      ],
    );
  }

  Row _buildKitchen(bool equippedKitchen) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.kitchen_outlined,
          color: equippedKitchen == true
              ? AppColors.navyBlueTitle
              : AppColors.strongWhite,
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
            equippedKitchen == true
                ? 'has the kitchen equipped'
                : 'does not have an equipped kitchen',
            style: TextStyle(
              fontSize: 14,
              color: equippedKitchen == true
                  ? AppColors.navyBlueTitle
                  : AppColors.strongWhite,
            ))
      ],
    );
  }

  Row _buildFurnished(bool furnished) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          Icons.chair_outlined,
          color: furnished == true
              ? AppColors.navyBlueTitle
              : AppColors.strongWhite,
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(furnished == true ? 'it is furnished' : 'it is not furnished',
            style: TextStyle(
              fontSize: 14,
              color: furnished == true
                  ? AppColors.navyBlueTitle
                  : AppColors.strongWhite,
            ))
      ],
    );
  }

  Row _buildDisposition(Disposition disposition) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          Icons.window_outlined,
          color: AppColors.navyBlueTitle,
          size: 20,
        ),
        const SizedBox(
          width: 6,
        ),
        Text("${disposition.name} disposition",
            style:
                const TextStyle(fontSize: 14, color: AppColors.navyBlueTitle))
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

  Widget _buildBuiltYear(int? builtYear) {
    if (builtYear == null) return const SizedBox.shrink();
    return Column(
      children: [
        const SizedBox(
          height: 6,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.cake_outlined,
              color: AppColors.navyBlueTitle,
              size: 20,
            ),
            const SizedBox(
              width: 6,
            ),
            Text('built in $builtYear',
                style: const TextStyle(
                    fontSize: 14, color: AppColors.navyBlueTitle))
          ],
        ),
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
