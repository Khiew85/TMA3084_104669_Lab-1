import 'dart:io';

void main() {
  bool isRunning = true;

  print("=====================================================");
  print("Pizza Price: Small: 5 USD, Medium: 7 USD, Large: 10 USD");

  while (isRunning) {
    int price = 0;
    
    print("Please enter your pizza size (small, medium, or large):");
    String? pizzaSize = stdin.readLineSync()?.trim().toLowerCase(); 

    switch (pizzaSize) {
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
        print("Invalid Pizza Size! Please try again.");
        continue;
    }

    print("How many pizzas do you want of $pizzaSize?");
      int? quantity = int.tryParse(stdin.readLineSync() ?? '');

    if (quantity == null || quantity <= 0) {
      print("Invalid quantity! Please enter a valid positive number.");
      continue;
    } else {
      int total = price * quantity;
      print("Your total payment is: \$$total USD");
    }

    print("Would you like to order another pizza? (yes/no):");
    String? choice = stdin.readLineSync()?.trim().toLowerCase();
    if (choice != 'yes') {
      isRunning = false;
      print("Thank you for using the Pizza Order Calculator!");
    }
  }
}