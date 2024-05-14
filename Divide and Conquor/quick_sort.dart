void main(){

List<int> arr = [6,3,9,5,2,8];
List<int> arr2 = [5,1,1,2,0,0];

int high = arr2.length  -1 ; 
int low = 0;
quickSort(arr2 , low , high) ; 
print('the sorted array is $arr2');
}

void quickSort(List<int> arr , int low , int high ){
  if(low<high){
 int pivot = Partition(arr ,  low ,  high);
  quickSort(arr, low, pivot -1);
  quickSort(arr , pivot+1 , high);
  }
 
}


int Partition(List<int> arr , int low , int high){
 
    int pivot = arr[high];
    int i = low-1 ; 
    for(int j=low ; j< high;j++){
      if(arr[j]<pivot){
        i++ ; 
        swap(arr, i, j) ; 

      }
    }
    swap(arr, i+1, high);
    return i+1 ; 

  }


swap(List<int> arr , int i  , int j){
 int temp = arr[i ];
 arr[i]= arr[j];
 arr[j] = temp ; 
}