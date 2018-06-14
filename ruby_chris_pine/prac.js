function itIsUnimportant(data){
    if (data < 2){
        return true;
}   else{
        return false;
}
}
for(var i = 0; i < 5; i++){
    console.log(i);
    if itIsUnimportant(i){
        continue;
   }else{
        break; 
    }
}