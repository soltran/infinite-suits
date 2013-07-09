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
  
  switchPhoto: function(event){
	  event.preventDefault();
	  $('.primary-photo').addClass('extra-photo');
	  $('.primary-photo').removeClass('primary-photo');
	  $(event.target).addClass('primary-photo');
	  $(event.target).removeClass('extra-photo')
	
  }
  
  

});
