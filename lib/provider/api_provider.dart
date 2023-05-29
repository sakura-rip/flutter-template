import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:example_app/repository/api_repository.dart';

final userDataProvider = FutureProvider((ref) async {
  final api = ref.read(apiClientProvider);
  return api.fetchUser();
});
