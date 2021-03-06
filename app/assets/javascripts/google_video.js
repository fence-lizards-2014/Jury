// 2. Asynchronously load the Upload Widget and Player API code.
var tag = document.createElement('script');
tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

// 3. Define global variables for the widget and the player.
// The function loads the widget after the JavaScript code has
// downloaded and defines event handlers for callback notifications
// related to the widget.
var widget;
var player;

function onYouTubeIframeAPIReady() {
  widget = new YT.UploadWidget('widget', {
    width: 400,
    events: {
      'onUploadSuccess': onUploadSuccess,
      'onProcessingComplete': onProcessingComplete
    }
  });
}

// 4. This function is called when a video has been successfully uploaded.
function onUploadSuccess(event) {
  // alert('Video ID ' + event.data.videoId + ' was uploaded and is currently being processed.');
  $('#widget').hide(400);
  $('#video-status').html("<img src='http://www.trendystuffhere.com/img/loading.gif' id='loading_gif'>");

}

// 5. This function is called when a video has been successfully processed.
function onProcessingComplete(event) {
  $('#video_url').val(event.data.videoId);
  $('#video-status').text('Time for a preview!')
  player = new YT.Player('player', {
    height: 282,
    width: 500,
    videoId: event.data.videoId,
    events: {}
  });
}

