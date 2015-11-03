module Spree
	module Admin
		class LatestProductsController < ResourceController
			def index
				@latest_products = collection
			end

			private

			def collection
				params[:q] ||= {}
				@search = Spree::LatestProduct.ransack(params[:q])
				@collection = @search.result.includes([:product]).page(params[:page]).per(params[:per_page])
			end
		end
	end
end
