void main(){
  int a=0,b=1;
  for (int i=0;i<10;i++){
    print(a);
    int nextNum=a+b;
    a=b;
    b=nextNum;
  }

  List <int> numberSeries=[3, 9, 1, 6, 4, 2, 8, 5, 7];
  int largest=numberSeries[0];
  for(int i=0;i<numberSeries.length;i++){
    if(numberSeries[i] > largest){
      largest=numberSeries[i];
    }
  }
  print("Largest value in numbers list is: $largest");

  for(int i=1;i<=10;i++){
    print("5 * $i = ${5*i}");
  }

  String text = "radar";

  bool isPalindrome = true;

  for (int i = 0; i < text.length / 2; i++) {
    if (text[i] != text[text.length - 1 - i]) {
      isPalindrome = false;
      break;
    }
  }

  if (isPalindrome) {
    print('"$text" is a palindrome.');
  } else {
    print('"$text" is NOT a palindrome.');
  }

    for (int i = 1; i <= 5; i++) {
    String row = "";
    for (int j = 1; j <= i; j++) {
      row += "$i";
    }
    print(row);
  }

  List<int> numbers = [2, 7, 5, 9, 3, 8, 1, 6];
  for (int num in numbers) {
    if (num > 5) {
      print(num);
    }
  }

  String words = "Hello World";
  int vowelCount = 0;
  for (int i = 0; i < words.length; i++) {
    String ch = words[i].toLowerCase();
    if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u') {
      vowelCount++;
    }
  }
  print("Number of vowels: $vowelCount");
}