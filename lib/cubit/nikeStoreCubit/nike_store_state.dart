part of 'nike_store_cubit.dart';

abstract class NikeStoreState {}

class NikeStoreInitial extends NikeStoreState {
  NikeStoreInitial(this.allProducts);

  NikeStoreInitial.init() : this([]);

  List allProducts;
  String testText = 'Hola padreee';

  NikeStoreInitial copyWith({
    List? allProducts,
  }) {
    return NikeStoreInitial(
      allProducts ?? this.allProducts,
    );
  }

  List<Object> get props => [allProducts, testText];
}
