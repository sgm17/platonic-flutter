import 'package:flutter_riverpod/flutter_riverpod.dart';

final flatSearchBarProvider = StateProvider.autoDispose<String>((ref) => '');
