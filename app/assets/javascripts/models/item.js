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
		
		$.ajax({
			url: that.url() + "/favorite"
			
			
		})
		
	}
	

});
