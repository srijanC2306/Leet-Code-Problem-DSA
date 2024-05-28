void main(){
 List<int> arr = [1,3,12,2, 34, 22] ; 
 print(secondLargestElement(arr));
}

int  secondLargestElement(List<int> arr){
    int first_largest   = -1 ; 
    int second_largest  = -1 ; 
    for(int i = 0 ; i < arr.length ; i++){
       if(arr[i]>first_largest){
        second_largest = first_largest ; 
        print("The seocnd largest::: $second_largest");
        print("The first largest::: $first_largest");
       first_largest = arr[i] ; 
       }else if(arr[i]> second_largest && second_largest !=first_largest){
         second_largest  = arr[i]; 
              print("The seocnd largest in else if::: $second_largest");
        print("The first largest in else if ::: $first_largest");
       }

    }
   
    return second_largest ; 
}