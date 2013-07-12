InfiniteShirts.Models.Category = Backbone.RelationalModel.extend({
	relations: [{
		type: Backbone.HasMany,
		key: 'items',
		relatedModel: 'InfiniteShirts.Models.Item',
		collectionType: 'InfiniteShirts.Collections.Items',
		reverseRelation: {
			key: 'category',
			type: Backbone.hasOne,
		}
	}],
	
	
})