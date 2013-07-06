window.InfiniteShirts = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initializeIndex: function() {
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
	  
    
  },
  InitializeNewListing: function(){
	  var that = this;
	  this.$rootEl = $("content");
	  new InfiniteShirts.Routers.Listings(that.$rootEl);
	  Backbone.history.start();
	
  }
};

