$(document).ready(function() {


	

  $('#displayfeedback').on('submit', function(event){
    //instead of returning false in the on function
    event.preventDefault();
   
    //turning the user input input field into a string
    var input = $('#displaychoice').val();
    console.log(input);
   
  
//Want to 
    $.ajax({
    type: "POST",
    url: "/displayfeedback",
    data: {value: input},
    success: function(return_data) { //return_data is value returned from our post route
   		obj= JSON.parse(return_data)
   		console.log(return_data)
   		console.log(obj)
   	// 	$('.displaycat').replaceWith("<% Category.find(+return_data+).feedbacks.each do |feedback| %>
	   // <%= feedback.title %> <% end %>");

   	},


   	
   	   
      // console.log(data)},
    fail: function(){console.log("fail") }
    })

  });
  });









// $(document).ready(function() {


	

//   $('#displayfeedback').on('submit', function(event){
//     //instead of returning false in the on function
//     event.preventDefault();
   
//     //turning the user input input field into a string
//     var input = $('#displaychoice').val();
//     console.log(input);
   
  
// //Want to 
//     $.ajax({
//     type: "POST",
//     url: "/displayfeedback",
//     data: {value: input},
//     success: function(return_data) { //return_data is value returned from our post route
//    		obj= JSON.parse(return_data)
//    		console.log(return_data)
//    		console.log(obj)
//    	// 	$('.displaycat').replaceWith("<% Category.find(+return_data+).feedbacks.each do |feedback| %>
// 	   // <%= feedback.title %> <% end %>");

//    	},


   	
   	   
//       // console.log(data)},
//     fail: function(){console.log("fail") }
//     })

//   });
//   });
