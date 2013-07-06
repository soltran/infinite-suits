InfiniteShirts.Views.NewListing = Backbone.View.extend({
	
    template: JST['items/new'],
  
    events: {
	  "click .category": "chooseCat",
	  "click .delivery-type-btn": "selectDelivery"
	
    },
  
    render: function(){
		
	  
    },
  
	
	selectDelivery: function(event){

	}
});