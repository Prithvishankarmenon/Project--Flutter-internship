void main() {
printmess();
}

void printmess() async {
  await Future.delayed(Duration(seconds: 5));
  print('Hello after 2 seconds');
}