InfiniteShirts.Models.Item = Backbone.RelationalModel.extend({
	relations: [{
		type: Backbone.HasMany,
		key: 'photos',
		relatedModel: 'InfiniteShirts.Models.Photo',
		collectionType: 'InfiniteShirts.Collections.Photos',
		reverseRelation: {
			key: 'item',
			type: Backbone.hasOne
		}
	},
	{
		type: Backbone.HasOne,
		key: 'primary_photo',
		relatedModel: 'InfiniteShirts.Models.Photo'

	}],
	
	favorite: function(){
		var that = this;
		console.log(this.id);
		
		$.ajax({
			url: "favorite",
			type: "POST",
			// data: { favorite[item_id]: this.id},
			success: function() {
				fave = new InfiniteShirts.Models.Favorite()
				fave.set("favorited", true);
			}
		})
		
	},
	
	unfavorite: function(){
		var that = this;
		
		$.ajax({
			url: "favorite",
			type: "DELETE",
			success: function() {
				fave = new InfiniteShirts.Models.Favorite()
				fave.set("favorited", false);
			}
		});
		
	}
	

});
