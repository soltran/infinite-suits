InfiniteShirts.Views.ItemShow = Backbone.View.extend({

  template: JST['items/show'],

  
  render: function(){
	  var photos = this.model.get('photos');
	  console.log(photos);
	  var photos = new InfiniteShirts.Collections.Photos(photos);
	  console.log(photos);
	  var renderedTemplate = this.template({
		  item: this.model,
		  photos: photos
		
	  });
	  this.$el.html(renderedTemplate);
	  return this;
  }
  
  

});
