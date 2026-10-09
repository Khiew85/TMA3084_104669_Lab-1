import 'dart:io';
void main(){
  int price = 0;
  print("=====================================================");
  print("Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD");
  print("Please enter your pizza size (small, medium, or large)");
  String? pizza_size = stdin.readLineSync()?.trim().toLowerCase();  switch(pizza_size){
    case "small":
      price = 5;
      break;
    case "medium":
      price = 7;
      break;
    case "large":
      price = 10;
      break;
    default:
      print("Invalid Pizza Size! Please try agian.");
      return;
  }
  print("How many pizzas do you want of $pizza_size?");
  int? quantity = int.tryParse(stdin.readLineSync() ?? '');
  if (quantity == null || quantity <= 0) {
    print("Invalid quantity! Please enter a valid positive number.");
  }else{
    int total = price*quantity;
    print("Your total payment is: \$$total");
  }
}
