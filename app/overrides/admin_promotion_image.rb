Deface::Override.new(:virtual_path => "spree/admin/promotions/_form",
                     :name => "admin_promotion_image_field",
                     :insert_bottom => "#general_fields",
                     :partial => "spree/admin/promotions/image_field",
                     :disabled => false)
