$(document).ready(function(){
  showRecipeTabs();
  upVoteListener();
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

function upVoteListener() {
  $('.upvote-button').on('click', function (event) {
    event.preventDefault();

    var url = $(this).parent().attr('action');
    var that = this

    var request = $.ajax({
      url: url,
      type: "POST"
    })

    request.done(function (response_data) {
      $(that).parents('article').find('.points').html(response_data)
    })

    request.fail(function (response_data) {
      alert("Oops, there was a problem!");
      console.log(response_data);
    })
  })
}






