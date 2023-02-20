float[] arr;
//int i=0;

void setup(){
  //fullScreen();
  size(800,600);
  arr= new float[width];
  for(int i=0;i<arr.length;i++){
    arr[i]=random(height);
  }
  t.start();
  //mergeSort(arr,0,arr.length-1);
}
void mergeSort(float[] arr, int lb,int ub){
  if(lb<ub){
    int mid=(lb+ub)/2;
    mergeSort(arr,lb,mid);
    mergeSort(arr,mid+1,ub);
    merge(arr,lb,mid,ub);
  }
}
void merge(float[] arr, int lb, int mid, int ub){
  int n1=mid-lb+1;
  int n2= ub-mid;
  
  float[] a= new float[n1];
  float[] b= new float[n2];
  
  for(int i=0;i<n1;i++){
    a[i]=arr[lb+i];
  }
  for(int j=0;j<n2;j++){
    b[j]=arr[mid+1+j];
  }
  int i=0;
  int j=0;
  int k=lb;
  while(i<n1 && j<n2){
    if(a[i]<=b[j]){
      arr[k]=a[i];
      try{Thread.sleep(5);}catch(Exception e){}; //delay the thread operating this function
      redraw();
      i++;
    }
    else{
      arr[k]=b[j];
      try{Thread.sleep(5);}catch(Exception e){}; //delay the thread operating this function
      redraw();
      j++;
    }
    k++;
  }
  while(i<n1){
    arr[k]=a[i];
    try{Thread.sleep(5);}catch(Exception e){}; //delay the thread operating this function
    redraw();
    i++;
    k++;
  }
  while(j<n2){
    arr[k]=b[j];
    //try{Thread.sleep(5);}catch(Exception e){}; //delay the thread operating this function
    redraw();
    j++;
    k++;
  }
  
}
Thread t = new Thread(){
  public void run(){
    mergeSort(arr, 0, arr.length - 1);
  }
};
void draw(){
  background(0);
  for(int i=0;i<arr.length;i++){
    line(i,height,i,height-arr[i]);
    stroke(255);
  }
}
