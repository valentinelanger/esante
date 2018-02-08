
$(document).ready(function () {
  // var nbP = $('.dialog-container p').length;
  // var w = parseInt($('.dialog-container p').css("width"));
  // var max = (nbP - 1) * w;
  // $("ul li[data-num='1']").addClass('active');
  // $('.step span').html('Step 1');

  // $('body').on('click','.btn', function(){
  //   var margL = parseInt($('.slider-turn').css('margin-left'));
  //   var modulo = margL%w;
  //   if (-margL < max && modulo == 0) {
  //     margL -= w;

  //     $('.slider-turn').animate({
  //       'margin-left':margL
  //     },300);
  //     $('ul li.active').addClass('true').removeClass('active');
  //     var x = -margL/w +1;
  //     $('ul li[data-num="'+x+'"]').addClass('active');
  //     $('.step span').html("Step "+x);
  //   }
  //   else  {}
  // });

  $('body').click(function(e) {
    if (!$(e.target).is('.shift-event')) {
      $(".dialog-container").addClass('hide');
    }
  });

  $('body').on('click','.close-icon',function(){
    // $('.dialog-container').animate({
    //   'opacity':0
    // },600);
    // $('.dialog-container').animate({
    //   'top':-1200
    // }, {
    //   duration: 2300,
    //   queue: false
    // });
    // $('.open').animate({
    //   'top':'50%'
    // });
    // $('.shift-event-'+shift_id).css("box-shadow", "");
    $('.dialog-container').addClass('hide');
  });



  // $('body').on('click','.open',function() {
  //   $('.open').animate({
  //     'top':-1000
  //   });
  //   $('.dialog-container').animate({
  //     'opacity':1
  //   },400);
  //   $('.dialog-container').animate({
  //     'top':'50%'
  //   }, {
  //     duration: 800,
  //     queue: false
  //   });
  // });
});


$('.shift-event').on('click', function() {

    var shift_id = $(this).data("id");
    console.log();
    var wday = $('.shift-event-'+shift_id).parent();
    if (wday.hasClass('next-month')) {
      $('.dialog-container-'+shift_id).css('top', '-228px');
      $('.dialog-container-'+shift_id).css('right', '0px');
    } else if (wday.hasClass('wday-0') || wday.hasClass('wday-6')) {
      $('.dialog-container-'+shift_id).css('top', '78px');
      $('.dialog-container-'+shift_id).css('right', '0px');
    }

    $('.dialog-container').addClass('hide');
    $('.shift-event-'+shift_id).css("box-shadow", "0 6px 10px 0 rgba(0,0,0,0.14), 0 1px 18px 0 rgba(0,0,0,0.12), 0 3px 5px -1px rgba(0,0,0,0.2)");
    $('.dialog-container-'+shift_id).removeClass('hide');
});
