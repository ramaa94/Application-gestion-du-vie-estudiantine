$(function() {

    $(window).scroll(function() {
  
      var mass = Math.min(20, 1+0.005*$(this).scrollTop());
  
      $('.nosclubs').css({
        'transform': 'scale(' + 1/mass + ')',
        'transform-origin': 'center',
        'opacity': Math.max(0, 1 - 0.005 * $(this).scrollTop())

      });
    });
  });

  var followers=document.getElementById("voters")

  vote.addEventListener('click',function(){
    v=Number(voters.innerText)
    voters.textContent=v+1;})
    
   
        