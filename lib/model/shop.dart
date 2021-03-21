class ShopData {
  List<ShopItem> shopitems;

  ShopData({this.shopitems});

  void addProduct(ShopItem p) {
    shopitems.add(p);
  }

  void removeProduct(ShopItem p) {
    shopitems.add(p);
  }
}

class ShopItem {
  String imageUrl;
  String thumbnail;
  String title;
  double price;
  int quantity;

  ShopItem(
      {this.imageUrl, this.thumbnail, this.price, this.quantity, this.title});
}
