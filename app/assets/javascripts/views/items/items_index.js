InfiniteShirts.Views.ItemsIndex = Backbone.View.extend({

  template: JST['items/index'],
  
  events: {
	  "click .item-link": "show"
	
  },
  
  render: function(){
	  var renderedTemplate = this.template({
		  items: this.collection
		
	  })
	  this.$el.html(renderedTemplate);
	  return this;
	  
  },
  
  show: function(event){
	  
	  var id = $(event.currentTarget).attr("data-id");
	  var item = this.collection.get(id);
	  var view = new InfiniteShirts.Views.ItemShow({
		  model: item
	  });
	  view.render().showModal();
  },
  
  

});
