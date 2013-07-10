InfiniteShirts.Views.ItemsIndex = Backbone.View.extend({

  template: JST['items/index'],
  
  events: {
	  "click .item-link": "show",
	  "click .js-item-fave": "favorite",
	  "click .js-item-unfave": "unfavorite"
	
  },
  
  render: function(){
	  console.log(this.collection);
	  var renderedTemplate = this.template({
		  items: this.collection
		
	  })
	  this.$el.html(renderedTemplate);
	  return this;
	  
  },
  
  show: function(event){
	  event.preventDefault();
	  var id = $(event.currentTarget).attr("data-id");
	  var item = this.collection.get(id);
	  var view = new InfiniteShirts.Views.ItemShow({
		  model: item
	  });
	  view.render().showModal();
  },
  
  favorite: function(event){
	  event.preventDefault();
	  var id = $(event.target).attr("data-attr");
	  var form = "#add_a_wish_form" + id;
	  $(form).ajaxSubmit({

		  success: function(response, status){
			  fave_icon = '[data-attr=' + '"' + id + '"' + "]";
			  $(".fave-icon" + fave_icon).toggleClass('hidden');
		  }
	  });
  },
  
  unfavorite: function(event){
	  event.preventDefault();
	  var id = $(event.target).attr("data-attr");
	  var form = "#delete_a_wish_form" + id;
	  $(form).ajaxSubmit({

		  success: function(response, status){
			  fave_icon = '[data-attr=' + '"' + id + '"' + "]";
			  $(".fave-icon" + fave_icon).toggleClass('hidden');
		  }
	  });
	  
	
  }
  

});
