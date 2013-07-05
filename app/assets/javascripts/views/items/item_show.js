InfiniteShirts.Views.ItemShow = Backbone.ModalView.extend({

  template: JST['items/show'],

  
  render: function(){
	  var photos = this.model.get('photos');
	  var renderedTemplate = this.template({
		  item: this.model,
		  photos: photos
		
	  });
	  this.$el.html(renderedTemplate);
	  return this;
  }
  
  

});
