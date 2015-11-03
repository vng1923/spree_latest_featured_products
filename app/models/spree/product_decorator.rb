Spree::Product.class_eval do
  has_many :latest_products, -> { order(:position) }
  has_many :featured_products, -> { order(:position) }
end
