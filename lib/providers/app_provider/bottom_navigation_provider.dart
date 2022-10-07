import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/screen/app/widgets/bottom_navigation.dart';

final bottomNavigationProvider = StateProvider<BottomNavigationState>((ref) {
  return BottomNavigationState.home;
});
