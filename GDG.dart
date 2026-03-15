class User {
  String name;
  int age;
  String address;
  List<String> friends;

  User({
    required this.name,
    required this.age,
    required this.address,
    required this.friends,
  });

  void displayUserInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Address: $address");
    print("Friends: $friends");
  }
}

class BankAccount {
  String accountNumber;
  double balance;

  BankAccount(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print("Deposited: $amount");
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("Withdrawn: $amount");
    } else {
      print("Insufficient balance!");
    }
  }

  void displayBalance() {
    print("Current Balance: $balance");
  }
}

class Calculator {
  int add(int a, int b) => a + b;

  int subtract(int a, int b) => a - b;

  int multiply(int a, int b) => a * b;

  double divide(int a, int b) => a / b;

  int modulus(int a, int b) => a % b;
}

abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

mixin Battery {
  void showBatteryLevel() {
    print("Battery level: 80%");
  }
}

class Smartphone with Battery {}

class Laptop with Battery {}

void main() {
  User user1 = User(
    name: "Alaa",
    age: 21,
    address: "Cairo",
    friends: ["Amr", "Mona"],
  );

  User user2 = User(
    name: "Ahmed",
    age: 25,
    address: "Alex",
    friends: ["Omar", "Ali"],
  );

  user1.displayUserInfo();
  user2.displayUserInfo();

  BankAccount account = BankAccount("65455", 1000);

  account.deposit(500);
  account.withdraw(200);
  account.withdraw(2000);
  account.displayBalance();

  Calculator calc = Calculator();
  print(calc.add(5, 3));
  print(calc.multiply(4, 2));

  Circle circle = Circle(5);
  Rectangle rect = Rectangle(4, 6);
  Square square = Square(3);

  print(circle.calculateArea());
  print(rect.calculateArea());
  print(square.calculateArea());

  Smartphone phone = Smartphone();
  Laptop laptop = Laptop();

  phone.showBatteryLevel();
  laptop.showBatteryLevel();
}
