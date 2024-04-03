part of 'products_cubit.dart';

@immutable
sealed class ProductsState {}

final class ProductsInitial extends ProductsState {}

final class AddToFavorite extends ProductsState {
  AddToFavorite();
  
}

final class ProductsLoading extends ProductsState {}

final class ProductsFailure extends ProductsState {
  ProductsFailure({required this.message});

  final String message;
}

final class ProductsNetworkError extends ProductsState {
  ProductsNetworkError({required this.message});

  final String message;
}

final class ProductsSuccess extends ProductsState {
  ProductsSuccess({required this.response});

  final List<Welcome> response;
}

final class ProductsNoData extends ProductsState {}
