InfiniteShirts.Views.ItemShow = Backbone.ModalView.extend({

  template: JST['items/show'],
  
  events: {
	  "click .extra-photo": "switchPhoto",
	  "click .js-add-to-cart": "addToCart",
	  "click .js-remove-from-cart": "removeFromCart"
	
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
	  $(event.target).removeClass('extra-photo');
	
  },
  
  addToCart: function(event){
	  event.preventDefault();
	  var id = this.model.id;
	  var model = this.model;
	  var form = "#add_to_cart_form";
	  $(form).ajaxSubmit({

		  success: function(response, status){
			  dataId = '[data-attr=' + '"' + id + '"' + "]";
			  $(".js-cart-image" + dataId).toggleClass('hidden');
			  $(".js-cart-btn").toggleClass('hidden');
			  $(".index-item" + dataId).toggleClass('outlined');
			  model.set("cart", true);
		  }
	  });
	
	
  },
  
  removeFromCart: function(event){
	  event.preventDefault();
	  var id = this.model.id;
	  var model = this.model;
	  var form = "#remove_from_cart_form";
	  $(form).ajaxSubmit({

		  success: function(response, status){
			  dataId = '[data-attr=' + '"' + id + '"' + "]";
			  $(".js-cart-image" + dataId).toggleClass('hidden');
			  $(".js-cart-btn").toggleClass('hidden');
			  $(".index-item" + dataId).toggleClass('outlined');
			  model.set("cart", null);
		  }
	  });
	
  }
  

});
