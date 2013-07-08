InfiniteShirts.Models.User = Backbone.RelationalModel.extend({
	relations: [{
		type: Backbone.HasMany,
		key: 'items',
		relatedModel: 'InfiniteShirts.Models.Item',
		collectionType: 'InfiniteShirts.Collections.Items'
		ReverseRelation: {
			key: 'seller'
			type: Backbone.HasOne
	
		}
	},
	{
		type: Backbone.HasOne,
		key: 'profile_pic',
		relatedModel: 'InfiniteShirts.Models.Photo',
		ReverseRelation {
			key: 'user'
			type: Backbone.HasOne	
		}
		
	}]

});
