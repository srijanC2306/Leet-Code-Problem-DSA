

void main() {
  List<Model> modelList = [Model(description: "a", title: "Srijan" , message: "Hye")  , Model(description: "a", title: "Sreeja" ,message:  "Hi"), Model(description: "aa", title: "Srijan" , message: "Andy") ];
  List<Model> filteredList =    modelList.where((element) => element.title == "Srijan" && element.description == "a").toList();

  filteredList.forEach((element) { print(element.message);});

}

class Model{
  final String title ;
  final String description ; 
  final String message ;
  Model({required this.description , required this.title,  required this.message});
}
