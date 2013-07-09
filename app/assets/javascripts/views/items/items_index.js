InfiniteShirts.Views.ItemsIndex = Backbone.View.extend({

  template: JST['items/index'],
  
  events: {
	  "click .item-link": "show",
	  "click .item-fave": "favorite",
	  "click .item-unfave": "unfavorite"
	
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
  
  favorite: function(event){
	  var id = $(event.target).attr("data-id");
	  
	  this.collection.get(id).favorite();
  },
  
  unfavorite: function(event){
	  var id = $(event.target).attr("data-id");
	  
	  this.collection.get(id).unfavorite();
	
  }
  

});
