float[] arr;

void setup(){
   size(800,600);
   arr=new float[width];
   for(int i=0;i<arr.length;i++){
     arr[i]=random(height);
   }
   t.start();
   //quickSort(arr,0, arr.length-1);
}
void quickSort(float[] arr,int start,int end){
  if(start>=end){
    return;
  }
  int index= partition(arr,start,end);
  quickSort(arr,start,index-1);
  quickSort(arr,index+1,end);
}

int partition(float[] arr,int start,int end){
  int pivotIndex=start;
  float pivotValue=arr[end];
  for(int i=start;i<end;i++){
    if(arr[i]<pivotValue){
      swap(arr,i,pivotIndex);
      pivotIndex++;
    }
  }
  swap(arr,pivotIndex,end);
  return pivotIndex;
}
Thread t = new Thread(){
  public void run(){
    quickSort(arr, 0, arr.length - 1);
  }
};
void swap(float[] arr,int a,int b){
  float temp=arr[a];
  arr[a]=arr[b];
  arr[b]=temp;
  try{Thread.sleep(5);}catch(Exception e){}; //delay the thread operating this function
  redraw();
}
void draw(){
  background(0);
  for(int i=0;i<arr.length;i++){
    line(i,height,i,height-arr[i]);
    stroke(255);
  }
}
