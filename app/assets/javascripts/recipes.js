$(document).ready(function(){
  showRecipeTabs();
})

function showRecipeTabs() {
  $(".tabs a").click(function(e){
    e.preventDefault();

    // Change tabs state
    $(".tabs a").parent().removeAttr('class');
    $($(this)).parent().attr('class', 'active');

    // Show recipes by category
    var $addr = $(this).attr("href");
    $('.tab-content').css('display', 'none');
    $($addr).css('display', 'inline');
  })
}







