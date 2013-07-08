InfiniteShirts.Views.ItemShow = Backbone.ModalView.extend({

  template: JST['items/show'],
  
  events: {
	  "click .extra-photo": "switchPhoto"
	
  },
  
  render: function(){
	  var photos = this.model.get('photos');
	  var renderedTemplate = this.template({
		  item: this.model,
		  photos: photos
		
	  });
	  this.$el.html(renderedTemplate);
	  return this;
  },
  
  switchPhoto: function(){
	  $('.photo-show').toggleClass('.primary-photo');
	  $('.photo-show').toggleClass('.extra-photo');
	
	
  }
  
  

});
