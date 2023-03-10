import '/src/data/repositories/repos.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRepoProvider {
  static List<RepositoryProvider> repoProviders = [
    RepositoryProvider<LocalStorageRepo>(
      lazy: false,
      create: (context) => LocalStorageRepo()..init(),
    ),
    RepositoryProvider<AuthRepo>(
      create: (context) => AuthRepo(),
    ),
    RepositoryProvider<BomRepo>(
      create: (context) => BomRepo(
        localStorage: context.read<LocalStorageRepo>().localStorage,
      ),
    ),
    RepositoryProvider<ProductRepo>(
      create: (context) => ProductRepo(
        localStorage: context.read<LocalStorageRepo>().localStorage,
      ),
    ),
    RepositoryProvider<BranchRepo>(
      create: (context) => BranchRepo(
        localStorage: context.read<LocalStorageRepo>().localStorage,
      ),
    ),
    RepositoryProvider<UoMRepo>(
      create: (context) => UoMRepo(
        localStorage: context.read<LocalStorageRepo>().localStorage,
      ),
    )
  ];
}
