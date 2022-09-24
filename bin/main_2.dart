import 'dart:io';
import 'dart:math';
import 'package:main_2/main_2.dart' as main_2;
class BankClient {
 int id=1;
 double balance=0;
 String name;
 static int numberOfClients = 0;
 static double bankBalance = 0;
 BankClient(String n):name=n{
  numberOfClients++;
  id=numberOfClients;
 }
 String getName(){
  return name;
 }
 double getBalance(){
  return balance;
 }
 void addToBalance(double amount){
  balance +=amount;
  bankBalance +=amount;
 }
 void substractifPossible(double amount){
  if (amount >balance){
   print ("Operation failed ");
  }else{
   balance =amount;
   bankBalance=amount;
  }
 }
 static void printBankData(){
  print(
      "the number of Clients is $numberOfClients\n The bank balance is $bankBalance"
  );
 }
}
void main() {
 var c1 = BankClient("nora"),
     c2 = BankClient("salah"),
     c3 = BankClient("mahmoud"),
     c4 = BankClient("mona");
 print(c1.getName());
 c1.addToBalance(350.5);
 c2.addToBalance(450.5);
 c3.addToBalance(550.5);
 print(c3.getBalance());
 print(c4.getBalance());
 BankClient.printBankData();
 c2.substractifPossible(100);
 print(c2.getBalance());
 c3.substractifPossible(300);
 print(c3.getBalance());
 BankClient.printBankData();
}

 /*void main () {
 Set<int> result =fun();
 print(result);
}
Set<int> fun(){
 List<int>myList=[1,4,4,9,16,16,25,36,36,49,64,81,100];
 Set<int> set = Set.from(myList);
 return set;



}
void main (){
 stdout.write("how many fibonacci number : ");
 int givennumber= int.parse(stdin.readLineSync()!);

List<int> result=fibonaccinumber(givennumber);
print(result);
}
List<int> fibonaccinumber(int givennumber){
 List <int> fiblist=[1,1];

 for(int i=0;i<givennumber;i++){
  fiblist.add(fiblist[i]+fiblist[i+1]);
 }
 return fiblist;
}

void main (){
Random random =new Random();
var number =random.nextInt(100);
print(number);
print("Guess the number");
int n= int.parse(stdin.readLineSync()!);
if(n>number){
 print(" too high");
}
else if(n==number)
{
 print("exactly right");
}
else{
 print(" too low");
}
}
void main (){
 List<int>myList=[1,4,9,16,25,36,49,64,81,100];
 List<int>n=[];
 for(var i in myList){
  if(i%2==0){
   n.add(i);
  }
 }
 for(int i=0;i<n.length;i++){
  print(n[i]);
 }
}
 List<int> myList=new List();
 myList=[1,1,2,3,5,8,13,21,34,55,89];
 int startIndex =0;
 int endIndex =6;
 List<int> subList=new List();
  subList=myList.sublist(startIndex,endIndex);*/
/*void main (){
 List<int>myList=[1,4,9,16,25,36,49,64,81,100];
 List<int>n=[];
 for(var i in myList){
  if(i%2==0){
   n.add(i);
  }
 }
 for(int i=0;i<n.length;i++){
  print(n[i]);
 }
}
 List<int> myList=new List();
 myList=[1,1,2,3,5,8,13,21,34,55,89];
 int startIndex =0;
 int endIndex =6;
 List<int> subList=new List();
  subList=myList.sublist(startIndex,endIndex);*/


