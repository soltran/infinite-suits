window.InfiniteShirts = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
	  var that = this;
	  this.items = new InfiniteShirts.Collections.Items();
	  this.$rootEl = $("#content");
	  this.items.fetch({
	  		  success: function(){
	  			  new InfiniteShirts.Routers.Items(that.$rootEl, that.items);
	  			  Backbone.history.start();
	  		  },
	  		  
	  		  error: function(){
	  			  console.log("error");
	  		  }
	  })
	  
	  $('.category').click(function(event) {
		  $('.category').removeClass('outlined');
		 $(this).toggleClass('outlined');
		 var cat = $(this).attr('cat-id');
		 $('#category-id').attr('value', cat);
		 
	  });
	   $('.delivery-type-btn').click(function(event) {
		   $('.delivery-type-btn').removeClass('btn-primary');
		   $(this).toggleClass('btn-primary');
		   var type = $(this).attr('data-delivery-type');
		   $('#delivery_type').attr('value', type);
	   });
    
  }
};

$(document).ready(function(){
  InfiniteShirts.initialize();
});
