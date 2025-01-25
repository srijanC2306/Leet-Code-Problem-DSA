void main(){


  List<int> nums = [4, 5, 6, 7, 0, 1, 2] ; 
  int target = 1 ;

 final result  =  Solution().rotatedSortedArray(nums, target) ; 

  print(result) ; 
}


class Solution {


  int rotatedSortedArray(List<int> nums , int target){

    int left = 0 ; 
    int right = nums.length - 1 ; 

    while(left <= right){


      int mid = left + (right - left) ~/ 2 ; 

      if(nums[mid]  == target) return mid  ; 
       
       // checking condition for left sorted 
      if(nums[left] <= nums[mid]){
        
        if(nums[left] <= target && target < nums[mid]){ 

          right = mid - 1 ; 
           
        }else {
       
          left = mid + 1 ; 
        }

      }  else {
    
     if(nums[mid] < target && target <= nums[right]){ 

          left = mid + 1 ; 
           
        }else {
       
          right = mid - 1 ; 
        }

      }   

    }

    return -1 ; 
  }
}