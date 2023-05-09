const texts=['Clubs','Events','More!'];
let count=0;
let i=0;
let currenttext='';
let letter='';
(function type(){
if (count=== texts.length){
    count=0;
}
currenttext=texts[count]
letter=currenttext.slice(0,++i)
document.getElementById('ishere').textContent=letter;
if(letter.length===currenttext.length){
    count++;
    i=0;
}
setTimeout(type,400);
})()

 


