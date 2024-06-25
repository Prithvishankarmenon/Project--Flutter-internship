class Sample {
  int count = 10;

  void printAny(){
    print("Hello world");
  }
}

void main(List<String> args){

  Sample obj =Sample();
  obj.printAny();
  print(obj.count);
}