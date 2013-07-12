InfiniteShirts.Views.ItemsIndex = Backbone.View.extend({

  template: JST['items/index'],
  
  initialize: function(o){
	  this.categories = o.categories
  },
  
  events: {
	  "click .item-link": "show",
	  "click .js-item-fave": "favorite",
	  "click .js-item-unfave": "unfavorite",
	  "click .js-show-want": "want",
	  "click .js-unshow-want": "unwant",
	  "click .js-category-filter": "categoryFilter",
	  "click .js-category-filter.outlined": "removeFilter"
	
  },
  
  render: function(){
		var that = this;
		var renderedTemplate = that.template({
			items: that.collection,
			categories: that.categories
		})
		that.$el.html(renderedTemplate);
		return that;
	  
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
	  var model = this.collection.get(id);
	  var form = "#add_a_wish_form" + id;
	  $(form).ajaxSubmit({

		  success: function(response, status){
			  fave_icon = '[data-attr=' + '"' + id + '"' + "]";
			  $(".fave-icon" + fave_icon).toggleClass('hidden');
			  $(".index-item" + fave_icon).toggleClass('item-unwanted');
			  model.set("wish", true);
		  }
	  });
  },
  
  unfavorite: function(event){
	  event.preventDefault();
	  var id = $(event.target).attr("data-attr");
	  var model = this.collection.get(id);
	  var form = "#delete_a_wish_form" + id;
	  $(form).ajaxSubmit({

		  success: function(response, status){
			  fave_icon = '[data-attr=' + '"' + id + '"' + "]";
			  $(".fave-icon" + fave_icon).toggleClass('hidden');
			  $(".index-item" + fave_icon).toggleClass('item-unwanted');
			  model.set("wish", false);
		  }
	  });
	  
	
  },
  
  want: function(event){
  	event.preventDefault();
	$(".item-unwanted").toggleClass('hidden');
	$(".js-want-li").toggleClass('hidden');
	$(".js-index-title").toggleClass('hidden');
  },
  
  unwant: function(event){
  	event.preventDefault();
	$(".item-unwanted").removeClass('hidden');
	$(".js-want-li").toggleClass('hidden');
	$(".js-index-title").toggleClass('hidden');
  },
  
  categoryFilter: function(event){
	  event.preventDefault();
	  $(".js-category-filter").removeClass('outlined');
	  $(event.currentTarget).toggleClass('outlined');
	  var name = $(event.currentTarget).attr('id');
	  cat_filter = '[cat-attr=' + '"' + name + '"' + "]";
	  $(".index-item").addClass('hidden');
	  $(".index-item" + cat_filter).toggleClass('hidden');
	  $( "#searchbar" ).tabs( "option", "active", false );
  },
  
  removeFilter: function(event){
	  event.preventDefault();
	  $(".js-category-filter").removeClass('outlined');
	  $(".index-item").removeClass('hidden');
	
  }
  

});
