# Catalog Products
# Need to use connection version v3
# https://developer.bigcommerce.com/api/v3/#/reference/catalog/products

module Bigcommerce
  module V3
    class ProductVariants < Resource
      include Bigcommerce::SubresourceActions.new uri: 'catalog/products/%d/variants?id:in=%d'

      property :data

      def self.update(parent_id, resource_id, params = {})
        raise ArgumentError if [parent_id, resource_id].any?(&:nil?)

        builded_path = "catalog/products/#{parent_id}/variants/#{resource_id}"
        put builded_path, params
      end
    end
  end
end
