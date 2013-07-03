window.InfiniteShirts = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
	  $('.category').click(function(event) {
		  $('.category').removeClass('outlined');
		  console.log(event.target);
		  var hi = event.target;
		 $(this).toggleClass('outlined');
	  });
    
  }
};

$(document).ready(function(){
  InfiniteShirts.initialize();
});
