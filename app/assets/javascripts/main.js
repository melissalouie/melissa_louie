$(function() {
  $('#slide').hide();
  $(':button').on('click', function() {
    $('#slide').show();
    $("#slide").animate({"right": "-=300px", "opacity":1}, "slow");
  });
});
