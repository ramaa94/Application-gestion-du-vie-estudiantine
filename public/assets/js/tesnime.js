 
        const main=document.getElementById("main");
        const nav=document.getElementById("nav");
        const asideNav_span1=document.getElementById("asideNav_span1");
        const asideNav_span2=document.getElementById("asideNav_span2");
        const asideNav_span3=document.getElementById("asideNav_span3");
        const asideNav_span4=document.getElementById("asideNav_span4");

       function f1(){
        console.log('hi');
        main.classList.add("active");
        nav.classList.add('ac')
        asideNav.classList.add('ac')
        asideNav_span1.style.color="white"
        asideNav_span2.style.color="white"
        asideNav_span3.style.color="white"
        asideNav_span4.style.color="white"

        
       }
       function f2(){
        console.log('bye');
        main.classList.remove("active");
        nav.classList.remove('ac')

       }