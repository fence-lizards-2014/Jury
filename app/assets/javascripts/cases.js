function addComment(e, data, status, xhr){
  $('.commentsBox').append(data);
  $('#comment_body').val('');
};

function addPlaintiff(e, data, status, xhr){
  $("#plaintiff_vote_count").text(data);
};

function addDefendant(e, data, status, xhr){
  $("#defendant_vote_count").text(data);
};

function updateVote(e, data, status, xhr){
  $("." + data.comment_id + "up").text(data.upvotes);
  $("." + data.comment_id + "down").text(data.downvotes);
}




