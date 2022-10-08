import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/domain/flat_repository/src/models/flat_image_model.dart';

final flatCarouselProvider =
    Provider.autoDispose<List<FlatImage>>((ref) => throw UnimplementedError());
