# Catalog Products
# Need to use connection version v3
# https://developer.bigcommerce.com/api/v3/#/reference/catalog/products

module Bigcommerce
  module V3
    class Products < Resource
      include Bigcommerce::ResourceActions.new uri: 'catalog/products/%d'

      property :data
      property :meta
    end
  end
end
