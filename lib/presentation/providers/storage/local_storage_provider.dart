import 'package:cinema_movie/infrastructure/datasources/isar_datasource.dart';
import 'package:cinema_movie/infrastructure/repositories/local_storage_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final localStorageRepositoryProvider = Provider((ref) {
  return LocalStorageRepositoryImpl(IsarDatasource());
});
