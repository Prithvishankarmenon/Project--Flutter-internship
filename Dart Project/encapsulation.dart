import 'counter_encapsulation.dart';
void main(){

 Counter mycount =Counter();
  print(mycount.count);
  mycount.increment();
  print(mycount.count);
  mycount.decrement();
  print(mycount.count);
  mycount.reset();
  print(mycount.count); 
}