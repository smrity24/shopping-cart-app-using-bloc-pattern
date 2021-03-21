part of 'shop_bloc.dart';

abstract class ShopState extends Equatable {
  const ShopState();

  @override
  List<Object> get props => [];
}

class ShopInitial extends ShopState {}

class ShopPageLoadedState extends ShopState {
  ShopData shopData;
  ShopData cartData;

  ShopPageLoadedState({this.cartData, this.shopData});
}

class ItemAddingCartState extends ShopState {
  ShopData cartData;
  List<ShopItem> cartItems;

  ItemAddingCartState({this.cartData, this.cartItems});
}

class ItemAddedCartState extends ShopState {
  List<ShopItem> cartItems;

  ItemAddedCartState({this.cartItems});
}

class ItemDeletingCartState extends ShopState {
  List<ShopItem> cartItems;

  ItemDeletingCartState({this.cartItems});
}
