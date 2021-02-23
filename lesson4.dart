String scream(int length) => "A${'a' * length}h!";

main() {
  final values = [1, 2, 3, 5, 10, 50];
  print("############### Convert imperative code to functional #########################");
  values.map(scream).forEach(print);
  print("\n\n############### Use more Iterable features #########################");
  values.skip(1).take(3).map(scream).forEach(print);
}