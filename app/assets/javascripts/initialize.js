function bindEvents(){

  $('.vote-defendant').on("ajax:success", addDefendant)
  $('.vote-plaintiff').on("ajax:success",addPlaintiff)
  $('.commentsBox').on("ajax:success", addComment)
  $('.commentsBox').on('ajax:success', '#like', updateVote)
  $('.commentsBox').on('ajax:success', '#dislike', updateVote)

  // Added CSS events
  $('#sign_up_trigger').on('click',function(event) {
      event.preventDefault();
      $('#sign_up_box').toggle();
  });

  $('.dashboard-alerts img').on('click',function(event){
    $('.dashboard-alerts').hide(500);
  })

}

$(document).ready(function() {
	
  bindEvents();
  startCountdown();

});
