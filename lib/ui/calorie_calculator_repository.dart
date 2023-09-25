class CalorieCalculatorRepository {
  double calculateCalories(double weight, double height, int age, String gender) {
    double calories = 0;

    // Perform your calorie calculation logic here
    // Example calculation based on weight and height
    calories = (10 * weight) + (6.25 * height) - (5 * age) + (gender == 'male' ? 5 : -161);

    return calories;
  }
}