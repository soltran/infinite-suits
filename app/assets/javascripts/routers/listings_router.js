InfiniteShirts.Routers.Listings = Backbone.Router.extend({

	initialize: function ($rootEl) {
			this.$rootEl = $rootEl;
		},
		
	routes: {
		
		"": "new"
		
	},
	
	new: function(){
		var that = this;
		var view = new InfiniteShirts.Views.NewListing({});
		// this.$rootEl.html(view.render().$el);
	}
	
	
});
