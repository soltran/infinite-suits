InfiniteShirts.Routers.Items = Backbone.Router.extend({
	
	initialize: function ($rootEl, collection) {
			this.$rootEl = $rootEl;
			this.collection = collection;
		},
		
	routes: {
		
		"": "index",
		"wants": "wants"
		
	},
	
	index: function(){
		var that = this;
		var view = new InfiniteShirts.Views.ItemsIndex({
			collection: that.collection
			
		});
		
		this.$rootEl.html(view.render().$el);
		
	},
	
	wants: function(){
		
		
	}

});
