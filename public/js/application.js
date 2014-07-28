$(document).ready(function() {
  $('#vote').click(function(e){
  	e.preventDefault();
  	var feedback_id = $('#hidden').html();
  	$.ajax({
  		url:'/feedback/'+feedback_id+'/vote',
  		dataType: 'json',
  		method: 'post',
  		data: {}
  		}).success(function(data) {
  			console.log(data)
  		}).fail(function(data){
  			console.log("not working!")
  		})
  });
});






