class FoodItem {
  final int? id;
  final String name;
  final String description;
  final int calorie;
  final String imagePath;

  FoodItem({
    this.id,
    required this.name,
    required this.description,
    required this.calorie,
    required this.imagePath,
  });
}

var demoItems = [
  FoodItem(
      id: 1,
      name: "Dal Bhat",
      description: "Boiled rice (bhat) served with lentil soup (dal), vegetable curry, pickle, and sometimes meat or fish.",
      calorie: 400,
      imagePath: "assets/images/meal_images/meal.png"),
  FoodItem(
      id: 2,
      name: "Momos",
      description: "Steam dumpling filled with meat or vegetables, usually served with a spicy tomato-based sauce.",
      calorie: 275,
      imagePath: "assets/images/meal_images/meal.png"),
  FoodItem(
      id: 3,
      name: "Chow Mein",
      description: "Stir-fried noodles with vegetables and meat, seasoned with soy sauce and spices.",
      calorie: 375,
      imagePath: "assets/images/meal_images/meal.png"),
  FoodItem(
      id: 4,
      name: "Aloo Tama Bodi",
      description: "A traditional Nepali dish made with potatoes, bamboo shoots (tama), and black-eyed beans (bodi), seasoned with spices and served with boiled rice.",
      calorie: 350,
      imagePath: "assets/images/meal_images/meal.png"),
  FoodItem(
      id: 5,
      name: "Thukpa",
      description: "A hearty noodle soup made with vegetables, meat, and spices.",
      calorie: 350,
      imagePath: "assets/images/meal_images/meal.png"),
  FoodItem(
      id: 6,
      name: "Sel Roti",
      description: "A sweet, circular -shaped Nepali bread made with rice flour and sugar, often eaten as a snack or dessert.",
      calorie: 50,
      imagePath: "assets/images/meal_images/meal.png"),
];

var exclusiveOffers = [demoItems[0], demoItems[1], demoItems[3], demoItems[5]];

var bestSelling = [demoItems[2], demoItems[3]];

var groceries = [demoItems[4], demoItems[5]];

var beverages = [
  FoodItem(
      id: 7,
      name: "Dite Coke",
      description: "355ml, Price",
      calorie: 12,
      imagePath: "assets/images/beverages_images/diet_coke.png"),
  FoodItem(
      id: 8,
      name: "Sprite Can",
      description: "325ml, Price",
      calorie: 12,
      imagePath: "assets/images/beverages_images/sprite.png"),
  FoodItem(
      id: 8,
      name: "Apple Juice",
      description: "2L, Price",
      calorie: 12,
      imagePath: "assets/images/beverages_images/apple_and_grape_juice.png"),
  FoodItem(
      id: 9,
      name: "Orange Juice",
      description: "2L, Price",
      calorie: 11,
      imagePath: "assets/images/beverages_images/orange_juice.png"),
  FoodItem(
      id: 10,
      name: "Coca Cola Can",
      description: "325ml, Price",
      calorie: 12,
      imagePath: "assets/images/beverages_images/coca_cola.png"),
  FoodItem(
      id: 11,
      name: "Pepsi Can",
      description: "330ml, Price",
      calorie: 49,
      imagePath: "assets/images/beverages_images/pepsi.png"),
];
