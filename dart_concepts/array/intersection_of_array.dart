void main() {
  Solution solution = Solution();
  var nums1 = [4, 9, 5];
  var nums2 = [9, 4, 9, 8, 4];
  solution.intersection(nums1, nums2);


 // Using Method 2 Just ucomment and can use Second Method Using SET as well  
  //List<int> result = intersectionOfArrays(nums1, nums2);
   // print(result);   

}

class Solution {
  List<int> intersection(List<int> nums1, List<int> nums2) {
    if (nums1.length > nums2.length) {
      swap(nums1, nums2);
    }

    // Lets assume
    // so num1 is smalller array and num2 is bigger array

    nums1.sort();
    List<int> intersection = [];
    Set<int> uniqueSet = {};
    for (int i in nums2) {
      if (binarySearch(nums1, i)) {
       
        if(!uniqueSet.contains(i)){
            print("The items is :: $i");
            uniqueSet.add(i) ; 
            intersection.add(i);
        }
         
        
      }
    }
    print("The intersecting array ::${intersection}") ; 
    return intersection;
  }

  void swap(List<int> num1, List<int> num2) {
    List<int> temp = num1;
    num1 = num2;
    num2 = temp;
  }

  bool binarySearch(List<int> nums, int target) {
    int low = 0;
    int high = nums.length - 1;

    while (low <= high) {
      int medians = (low + high) ~/ 2;
      if (nums[medians] == target) {
        return true;
      } else if (nums[medians] > target) {
        high = medians - 1;
      } else {
        low = medians + 1;
      }
    }
    return false;
  }
}


//Mathod 2 Using Set
List<int> intersectionOfArrays(List<int> arr1, List<int> arr2) {
  // Identify the smaller and larger array
  if (arr1.length > arr2.length) {
    List<int> temp = arr1;
    arr1 = arr2;
    arr2 = temp;
  }
  
  // Use a Set to store the unique elements of the smaller array
  Set<int> smallerSet = Set.from(arr1);
  
  // Find the intersection using a Set to ensure unique elements
  Set<int> intersection = {};
  for (int element in arr2) {
    if (smallerSet.contains(element)) {
      intersection.add(element);
    }
  }
  
  return intersection.toList();
}
