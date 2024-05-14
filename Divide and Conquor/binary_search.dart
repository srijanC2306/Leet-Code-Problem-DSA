void main(){

List<int> nums = [1,2,3,4,6,7,8];
int target = 7 ;
int result = binarySearch(nums , target);
 if (result == -1) {
    print("Target not found");
  } else {
    print('The target found at index $result'); // Corrected to print the result
  }

}

int binarySearch(List<int> arr , int target){
    int low = 0 ;
    int high =  arr.length-1; 
     while(low<=high){
        int median = (low +high)~/2;
        if(arr[median]==target){
            return median ;
        }
        else if(arr[median]<target){
            low = median +1 ;
        }
        else {
            high = median + 1 ; 
        }
     }
     return -1 ; 

}