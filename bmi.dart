import 'dart:io';

void main() {
  print("---------------WELCOME TO BIDHAN BMI CALCULATOR---------------\n\n\n");
  print("----------Which unit do you want to use?--------------------\n\n");
  print("1.KILOGRAM");
  print("\n2.POUNDS");
  int opt = int.parse(stdin.readLineSync()!);
  if (opt == 1) {
    kilo();
  } else if (opt == 2) {
    pounds();
  } else {
    print("Invalid input");
    main();
  }
}

void kilo() {
  print("-----Enter your weight in kilograms-----\n");
  double weight = double.parse(stdin.readLineSync()!);
  print("-----Enter your height in meters-----\n");
  double height = double.parse(stdin.readLineSync()!);
  double BMI = weight / (height * height);
  conclusion(BMI);
}

void pounds() {
  print("-----Enter your weight in pounds-----\n");
  double weight = double.parse(stdin.readLineSync()!);
  print("-----Enter your height in inches-----\n");
  double height = double.parse(stdin.readLineSync()!);
  double BMI = (weight / (height * height)) * 703;
  conclusion(BMI);
}

void conclusion(BMI) {
  print("---------YOUR BMI IS: $BMI\n\n");
  if (BMI < 18.5) {
    print("You are underweight");
  } else if (BMI > 18.5 && BMI < 24.9) {
    print("You are normal");
  } else if (BMI > 25 && BMI < 29.9) {
    print("You are overweight");
  } else if (BMI == 30 || BMI > 30.0) {
    print("You are obese");
  }
}
