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
//= require_tree .
//= require turbolinks
//= require Chart.bundle
//= require chartkick

$(document).ready(function(){


  new Hammer( $( ".fixSafariOverflow" )[ 0 ], {
        domEvents: true
      } );
      var current = 1;
      var pgs = $( ".home-page-slider" );
      $( ".fixSafariOverflow" ).on( "swipeleft", function( e ) {
       if ( pgs[ current + 1 ] ) {
         pgs.removeClass( "home" );
         pgs.addClass('hidden')
         pgs.eq( ++current ).addClass( "home" );
         pgs.eq(current).removeClass( "hidden" );
       }
      } );
      $( ".fixSafariOverflow" ).on( "swiperight", function( e ) {
       if ( pgs[ current - 1 ] ) {
         pgs.removeClass( "home" );
         pgs.addClass('hidden')
         pgs.eq( --current ).addClass( "home" );
         pgs.eq(current).removeClass( "hidden" );
       }
      } );



  addNoteToDatabase()
  addEngineeringEmpathyPoint();
  completeChallengeRelease();
});//END DOCUMENT READY


function homeAfterLeft() {
  setTimeout(function(){
    $('#home').removeClass("afterSwipeLeftHome");
  }, 75);
}


function homeAfterRight(){
    setTimeout(function(){
    $('#home').removeClass("afterSwipeRightHome");
  }, 75);
}

var addNoteToDatabase = function(){
  $('.note-form').on('submit', function(event){
    event.preventDefault();
    // debugger;
    var data = $(this).serialize()
    $(this).children().val('')
    var method = $(this).attr('method')
    var url = $(this).attr('action')
    $.ajax({
      method: method,
      url: url,
      data: data
    }).done(function(response){
      alert('Note successfully created')
    })
  })
}

var addEngineeringEmpathyPoint = function(){
  $('.ee-btns').on('click', function(event){
    event.preventDefault()
    var url = $(this).attr('action')
    $.ajax({
      method: 'patch',
      url: url
    }).done(function(response){
      $('#points-container').html(response);
    })
  })
}

var completeChallengeRelease = function(){
  $('.release-checkbox').on('click', function(event){
    var url = $(this).parent().attr('action')
    $.ajax({
      url: url,
      method: "PATCH"
    })
  })
}

// var leftPageButton = function(){
//    $('#leftPage').removeClass("leftPage", homeAfterLeft());

// }
