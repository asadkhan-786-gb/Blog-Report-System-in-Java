$(document).ready(function() {
  $('#country').change(function() {
    var $id = $(this).val();
    var selectfirst = false;

    $('#state option').each(function() {
      if($(this).val() != $id) {
        $(this).hide();
      } else {
        if(selectfirst == false) {
          selectfirst = true;
          $(this).attr('selected', 'selected');
        }
        $(this).show();
      }
    });
});
  $('#state').change(function() {
    var $id = $(this).val();
    var selectfirst = false;

    $('#district option').each(function() {
      if($(this).val() != $id) {
        $(this).hide();
      } else {
        if(selectfirst == false) {
          selectfirst = true;
          $(this).attr('selected', 'selected');
        }
        $(this).show();
      }
    });
  });
    });
