
void main() {
  //[0,1,0,2,1,0,1,3,2,1,2,1]
  //[4,2,0,3,2,5]

  List<int> height =[0,1,0,2,1,0,1,3,2,1,2,1];
  print("height: $height");

  newHeightLi(height);

  }


 void newHeightLi( List <int> list){

 int secondMax = list[0];
 int max = list[0];
  for (int number in list ){ 
     if(number > max){
      secondMax = max;
      max = number;
     }
        
      else if(number > secondMax && number != max){
       secondMax = number;
      }

    }
   print("The highest second element : $secondMax");



    int sum = 0;
    int difference =0;
    List<int> newHeight=[];
     for (int number in list ){ 

       if(number == secondMax){
       int index= list.indexOf(number);
        newHeight = list.sublist(index);
        print("new sub array from first array : $newHeight");
        break;
  
       }
  
     }
        for (int i=0; i < newHeight.length; i++){ 

           if(newHeight[i]!= max){
              difference = secondMax - newHeight[i];
              sum = sum + difference;
           }

       }

    print("Blue units : $sum");    
  
   }
   
