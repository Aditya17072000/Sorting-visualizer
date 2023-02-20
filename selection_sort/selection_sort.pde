float[] arr;
int i=0;

void setup(){
  fullScreen();
  //size(800,600);
  arr= new float[width];
  for(int i=0;i<arr.length;i++){
    arr[i]=random(height);
  }
}

void swap(float[] arr,int a,int b){
  float temp=arr[a];
  arr[a]=arr[b];
  arr[b]=temp;
}
void draw(){
  if(i<arr.length-1){
    int min=i;
    for(int j=i+1;j<arr.length;j++){
      if(arr[j]<arr[min]){
        min=j;
      }
    }
    if(min!=i){
      swap(arr,i,min);
    }
    i++;
  }
  background(0);
  for(int i=0;i<arr.length;i++){
    line(i,height,i,height-arr[i]);
    stroke(255);
  }
}
