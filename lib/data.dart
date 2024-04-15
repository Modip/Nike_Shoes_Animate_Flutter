class Snicker {
  String? name, image, description, price;

  Snicker({required this.name, this.image, this.description, this.price});
}

List snickers = [
  Snicker(
      name: "Modip",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt magna aliqua,ut labore et dolore magna aliqua.eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      image: "assets/images/img1.png",
      price: "300"),
  Snicker(
      name: "Zeydi",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt magna aliqua,ut labore et dolore magna aliqua.eiusmod tempor incididunt ut labore et dolore magna aliqua.",
      image: "assets/images/img2.png",
      price: "500"),
];
