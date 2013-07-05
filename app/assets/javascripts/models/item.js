InfiniteShirts.Models.Item = Backbone.RelationalModel.extend({
	relations: [{
		type: Backbone.HasMany,
		key: 'photos',
		relatedModel: 'InfiniteShirts.Models.Photo',
		collectionType: 'InfiniteShirts.Collections.Photos',
		ReverseRelation: {
			key: 'item',
			type: Backbone.hasOne
		}
	},
	{
		type: Backbone.HasOne,
		key: 'primary_photo',
		relatedModel: 'InfiniteShirts.Models.Photo',
		ReverseRelation: {
			key: 'item',
			type: Backbone.hasOne
		}
	}]
	

});
