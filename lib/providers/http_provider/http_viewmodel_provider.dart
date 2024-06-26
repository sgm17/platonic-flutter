import 'package:platonic/domains/http_repository/src/http_viewmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platonic/providers/user_provider/providers.dart';
import 'providers.dart';

final httpViewmodelProvider = Provider<HttpViewmodel>((ref) {
  final tokenId = ref.watch(tokenIdProvider);
  final httpClient = ref.watch(httpClientProvider);
  return HttpViewmodel(tokenId: tokenId, httpClient: httpClient);
});
