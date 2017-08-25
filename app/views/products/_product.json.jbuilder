json.extract! product, :id, :title, :description, :price, :image1, :image2, :image3, :created_at, :updated_at
json.url product_url(product, format: :json)
