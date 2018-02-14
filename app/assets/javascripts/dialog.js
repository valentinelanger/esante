
$(document).ready(function () {

  $('body').click(function(e) {
    if (!$(e.target).is('.shift-event')) {
      $('.dialog-container').fadeOut(350);
      $(".dialog-container").addClass('hide');
    }
  });

  $('.close-icon').on('click', function(e){
    $('.dialog-container').fadeOut(350);
    $('.dialog-container').addClass('hide');
  });
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
    $('.dialog-container').fadeIn(200);
    $('.dialog-container-'+shift_id).removeClass('hide');
});
