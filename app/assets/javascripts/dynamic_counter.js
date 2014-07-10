// Dynamic Counter feature
// Parse HTML using AJAX call and parse string into output, then place into document HTML

function startCountdown() {

	// If countdown timer is on the page, dynamically update counter.
	  if ($('.countdown-timer').length > 0) {

	  	var caseID = parseInt(window.location.href.split("/")[4]);
	  	var targetURL = "/cases/" + caseID;
	  	var outputString = "";

			var dynamicCounter = window.setInterval(function(caseID){

			  $.ajax({
			    type: 'GET',
			    dataType: 'html',
			    url: targetURL
			  }).done(function(event) {

					var myarray = event.split("<");
					var indexNum = 106
					while (indexNum < 116) {
						outputString = outputString + "<" + myarray[indexNum]
						indexNum += 1
					}
					$('.countdown-timer').html(outputString)
					outputString = ""

			  }).fail(function(){
			  	console.log("background call failed")
			  });	

			}, 1000);

	  }

};

