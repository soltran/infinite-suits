window.InfiniteShirts = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
	  $('.category').click(function(event) {
		  $('.category').removeClass('outlined');
		 $(this).toggleClass('outlined');
		 var cat = $(this).attr('cat-id');
		 $('#category-id').attr('value', cat);
		 
	  });
    
  }
};

$(document).ready(function(){
  InfiniteShirts.initialize();
});
