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
		var categories = new InfiniteShirts.Collections.Categories();
		categories.fetch({
		  success: function(){
				var view = new InfiniteShirts.Views.ItemsIndex({
					collection: that.collection,
					categories: categories

				});

				that.$rootEl.html(view.render().$el);
		  },
		  
		  error:function(){
				console.log("error")
		  }
	 	})
		
		
	},
	
	wants: function(){
		var that = this;
		var wants = this.collection.where({ wish: true});
		var view = new InfiniteShirts.Views.ItemsIndex({
			collection: wants
			
		});
		
		this.$rootEl.html(view.render().$el);
		
	}

});
