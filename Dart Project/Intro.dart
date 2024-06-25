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

  dynamic a = 22;
  print(a);
  a = 'hi';
  print(a);
  //var b = "aa";

  int num = 3;

  if (num == 2) {
    print("this number is true");
  } else if (num == 1) {
    print("number is 1");
  } else {
    print("number is greater than 3");
  }
  String grade = 'A';

  switch (grade) {
    case 'A':
      print("Excellent");
    case 'B':
      print("good");
    case 'C':
      print("Avarage");
    case 'D':
      print("Poor");
  }

  for (int i = 0; i < 10; i++) {
    print("$i");
  }

  List<String> color = ['red', 'white', 'black'];
  for (String i in color) {
    print(i);
  }

  bool odev = oddeven(22);

  print(odev);
}

bool oddeven(int a) {
  return(a.isEven);
}