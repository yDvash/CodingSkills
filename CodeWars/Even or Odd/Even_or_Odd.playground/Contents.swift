/**
 Create a function that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.
 */

func evenOrOdd(_ number:Int) -> String {
  return number % 2 == 0 ? "Even" : "Odd"
}
