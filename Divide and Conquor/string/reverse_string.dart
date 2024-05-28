void main(){
print(reverseString("abc.def")) ; 
}

// Input - abc.def 

// 1.Output - fed.cba
// 2.Output - cba.fed
// 3.Output - def.abc

//Lets Start writing the code

String reverseString(String input){

  List<String> strList = input.split(".") ; 
  StringBuffer sb = StringBuffer() ; 
  strList.forEach((element) {
    var newElement = element.split('').reversed.join();
    sb.write(newElement+'.') ; 
  });

  print("Before $sb") ; 

     var content = sb.toString();
     content = content.substring(0, content.length -1) ; 
  
    sb.clear() ; 
    sb.write(content) ; 
      print("After $sb") ; 

  return sb.toString() ; 
  
}