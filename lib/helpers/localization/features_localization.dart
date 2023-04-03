import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

String localizationToFeature(
    {required String key, required BuildContext context}) {
  switch (key) {
    case 'feature_wifi':
      return AppLocalizations.of(context)!.feature_wifi;
    case 'feature_air_conditioning':
      return AppLocalizations.of(context)!.feature_air_conditioning;
    case 'feature_heating':
      return AppLocalizations.of(context)!.feature_heating;
    case 'feature_closet':
      return AppLocalizations.of(context)!.feature_closet;
    case 'feature_dishwasher':
      return AppLocalizations.of(context)!.feature_dishwasher;
    case 'feature_microwave':
      return AppLocalizations.of(context)!.feature_microwave;
    case 'feature_oven':
      return AppLocalizations.of(context)!.feature_oven;
    case 'feature_refrigerator':
      return AppLocalizations.of(context)!.feature_refrigerator;
    case 'feature_smoke':
      return AppLocalizations.of(context)!.feature_smoke;
    case 'feature_elevator':
      return AppLocalizations.of(context)!.feature_elevator;
    case 'feature_garage':
      return AppLocalizations.of(context)!.feature_garage;
    case 'feature_laundry':
      return AppLocalizations.of(context)!.feature_laundry;
    case 'feature_furnitures':
      return AppLocalizations.of(context)!.feature_furnitures;
    case 'feature_gym':
      return AppLocalizations.of(context)!.feature_gym;
    case 'feature_pool':
      return AppLocalizations.of(context)!.feature_pool;
    case 'feature_balcony':
      return AppLocalizations.of(context)!.feature_balcony;
    case 'feature_local_library':
      return AppLocalizations.of(context)!.feature_local_library;
    case 'feature_terrace':
      return AppLocalizations.of(context)!.feature_terrace;
  }
  return '';
}
