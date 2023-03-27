class ProdModel {
  String? image;
  String? title;
  String? cat;
  String? stock;
  String? weight;
  String? frag;

  ProdModel(
      {this.frag, this.image, this.stock, this.title, this.weight, this.cat});
}

List<ProdModel> prod = [
  ProdModel(
      image: "assets/pic/item.png",
      title: "Rice and Chicken",
      cat: "Food",
      stock: "3 plates",
      weight: "40kg",
      frag: "Item is fragile (glass) so be careful"),
];
