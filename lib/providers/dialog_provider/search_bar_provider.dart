import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchBarProvider = StateProvider.autoDispose<String>((ref) => '');
