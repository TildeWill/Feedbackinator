
$(document).ready(function () {

$('#navigation a').stop().animate({'marginLeft':'-85px'},1000);

    $('#navigation > li').hover(
        function () {
            $('a',$(this)).stop().animate({'marginLeft':'-2px'},200);
        },
        function () {
            $('a',$(this)).stop().animate({'marginLeft':'-85px'},200);
        }
    );


$("form#addcomment").submit(function(event) {
  event.preventDefault();
  // var comment=$(this).serialize();
  

	$.ajax({
            type: 'POST',
            url: $(this).attr('action'),
            data:  {formcontent: $('#commentmessage').val()},
  
            // Mostramos un mensaje con la respuesta de PHP
           success: function(data) {
	            console.log("success");
	            newcomment=JSON.parse(data);
	   
	            $('#commentbody').append("</br></br>" +  newcomment);
           },
           fail: function(data) {
           console.log("fail");
           }
        }); 
 }); 


 });  

  // $('form#postvotes').submit(function(e){
  // 	e.preventDefault();

  // 	var post_id = $('.hidden').html()


  // 	$.ajax ({
  // 		type: 'post',
  // 		url: '/posts/'+post_id+'/vote',
  // 		data: $(this).serialize()
  // 	}).success(function(data) {
  // 		current_votes = $('#countpostvotes');
  // 		current_votes.html(data);
  // 		$("#commentvotebutton").hide();
  // 	}).fail(function(data){
  // 		console.log("not working!")
  // 	})
  // })

//   $('form#addcomment').submit(function(e) {
//   	e.preventDefault();

//   	var feedback_id = $('.hidden').html()

//   	$.ajax ({
//   		type: 'post',
//   		url: '/feedbacks/'+feedback_id+'/comments',
//   		data: $(this).serialize()
//   	}).success(function(data){
//   		data=JSON.parse(data)
//   		$('#comments').prepend(+data+);
//   		// $('#comments').html(data)
//   		// $('#text').val('');
//   	}).fail(function(data) {
//   		console.log("Not working")
//   	})
//   })
// });



// $(document).ready(function() {
//   $('.displaycat').hide()

  

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
//     data: {name: input},
//     success: function(return_data) { //return_data is value returned from our post route
//       obj= JSON.parse(return_data)
//       console.log(return_data)
//       console.log(obj)
//       $('.displaycat').show()
//     //  $('.displaycat').replaceWith("<% Category.find(+return_data+).feedbacks.each do |feedback| %>
//      // <%= feedback.title %> <% end %>");

//     },


    
       
//       // console.log(data)},
//     fail: function(){console.log("fail") }
//     })

//   });
//   });





// // $(document).ready(function() {


	

// //   $('#displayfeedback').on('submit', function(event){
// //     //instead of returning false in the on function
// //     event.preventDefault();
   
// //     //turning the user input input field into a string
// //     var input = $('#displaychoice').val();
// //     console.log(input);
   
  
// // //Want to 
// //     $.ajax({
// //     type: "POST",
// //     url: "/displayfeedback",
// //     data: {value: input},
// //     success: function(return_data) { //return_data is value returned from our post route
// //    		obj= JSON.parse(return_data)
// //    		console.log(return_data)
// //    		console.log(obj)
// //    	// 	$('.displaycat').replaceWith("<% Category.find(+return_data+).feedbacks.each do |feedback| %>
// // 	   // <%= feedback.title %> <% end %>");

// //    	},


   	
   	   
// //       // console.log(data)},
// //     fail: function(){console.log("fail") }
// //     })

// //   });
// //   });





// // $(document).ready(function() {


	

// //   $('#displayfeedback').on('submit', function(event){
// //     //instead of returning false in the on function
// //     event.preventDefault();
   
// //     //turning the user input input field into a string
// //     var input = $('#displaychoice').val();
// //     console.log(input);
   
  
// // //Want to 
// //     $.ajax({
// //     type: "POST",
// //     url: "/displayfeedback",
// //     data: {value: input},
// //     success: function(return_data) { //return_data is value returned from our post route
// //    		obj= JSON.parse(return_data)
// //    		console.log(return_data)
// //    		console.log(obj)
// //    	// 	$('.displaycat').replaceWith("<% Category.find(+return_data+).feedbacks.each do |feedback| %>
// // 	   // <%= feedback.title %> <% end %>");

// //    	},
   	   
// //       // console.log(data)},
// //     fail: function(){console.log("fail") }
// //     })

// //   });
// //   });

