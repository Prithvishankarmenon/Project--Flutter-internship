class Sample {
  int a;
   Sample(this.a);
  void printAny(){
    print(a);
  }
}

void main(List<String> args){

  Sample obj =Sample(2);
  obj.printAny();

}