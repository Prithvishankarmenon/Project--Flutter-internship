class Counter {
  int _count =10;
 
  int get count => _count;

  void increment(){
    _count++;
  }
  void decrement(){
    _count--;
  }
  void reset(){
    _count = 0;
  }
}