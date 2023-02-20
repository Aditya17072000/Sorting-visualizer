float[] arr;
int j=1;
//int i=0;
void setup(){
   size(800,600);
   arr=new float[width];
   for(int i=0;i<arr.length;i++){
     arr[i]=random(height);
   }
}


void draw(){
  if(j<arr.length){
    float t=arr[j];
    int i=j-1;
    while(i>0 && arr[i]>t){
      arr[i+1]=arr[i];
      i--;
    }
    arr[i+1]=t;
    j++;
  }
  background(0);
  for(int i=0;i<arr.length;i++){
    line(i,height,i,height-arr[i]);
    stroke(255);
  }
}
