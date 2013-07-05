InfiniteShirts.Views.ItemsIndex = Backbone.View.extend({

  template: JST['items/index'],
  
  events: {
	  "click #item-link": "show"
	
  },
  
  render: function(){
	  var renderedTemplate = this.template({
		  items: this.collection
		
	  })
	  this.$el.html(renderedTemplate);
	  return this;
	  
  },
  
  show: function(event){
	  console.log(this.collection);
	  var id = $(event.target).attr("data-id");
	  var item = this.collection.get(id);
	  console.log(item);
	  var view = new InfiniteShirts.Views.ItemShow({
		  model: item
	  });
	  $('#item-stuff').html(view.render().$el);
  }
  
  

});
