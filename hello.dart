void main() {
  print("Hello");

  String name = "Prithvi";
  print(name);
  int num1 = 6;
  double num2 = 22.1;

  print("$num1 $num2");

  List<int> numlist = [10, 20, 30];
  print(numlist);

  print(numlist.isEmpty);

  Map<String, String> ar1 = {"domain": "flutter", "Name": "PS"};
  print(ar1["domain"]);
  Map<String, dynamic> ar2 = {
    "domain": ["flutter", 22],
    "Name": "PS"
  };
  print(ar2["domain"][1]);
  print(ar2);
  print(ar1);
}
