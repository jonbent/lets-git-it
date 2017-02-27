// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(document).ready(function(){

var homeSlide = document.getElementById('home');
var slider = new Hammer(homeSlide)
slider.on("panleft panright tap press", function(ev) {
      // homeSlide.textContent = ev.type +" gesture detected.";
      console.log(ev.type);
      if(ev.type=="panleft"){
      console.log("panleft")
      // $('#body').css("background-color","green")
       $('#leftPage').removeClass("leftPage");
      }else if(ev.type=="panright"){
        console.log("panright")
        // $('#body').css("background-color","pink")
        $('#leftPage').addClass("leftPage");
        $('#home').addClass("afterSwipeLeftHome");
      }
  });//End Home slider



var leftPageSlide = document.getElementById('leftPage');
var slider = new Hammer(leftPageSlide)
slider.on("panleft panright tap press", function(ev) {
      // homeSlide.textContent = ev.type +" gesture detected.";
      // console.log(ev.type);
      if(ev.type=="panleft"){
      // console.log("panleft")
      // $('#body').css("background-color","green")
       $('#leftPage').removeClass("leftPage", callBack());
       // document.getElementById("#leftPage").addEventListener("transitionend", callBack());
          // $('#home').removeClass("afterSwipeLeftHome");
          // $('#home').show();

       // });




      }else if(ev.type=="panright"){
        // console.log("panright")
        // $('#body').css("background-color","pink")
        $('#leftPage').addClass("leftPage");
      }
  });

});//END DOCUMENT READY



function callBack() {
  console.log("FUCCCCCKKKKK");

  setTimeout(function(){
    $('#home').removeClass("afterSwipeLeftHome");
  }, 400);

   // $('#home').removeClass("afterSwipeLeftHome");


    // this.innerHTML = "transitionend event occured - The transition has completed";
    // this.style.backgroundColor = "pink";
}