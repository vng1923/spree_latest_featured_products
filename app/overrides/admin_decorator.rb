Deface::Override.new(:virtual_path => "spree/admin/shared/sub_menu/_product",
                     :name => "reviews_admin_tab",
                     :insert_top => "[data-hook='admin_product_sub_tabs']",
                     :text => "<%= tab(:latest_products, :label => 'Featured Products') %>")