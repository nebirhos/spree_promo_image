class Spree::PromotionImage < Spree::Image
  belongs_to :promotion
  has_attached_file :attachment, 
                    :styles => {:mini => '48x48#', :normal => '300x300>', :large => '940x300>'},
                    :default_style => :large,
                    :url => "/spree/promo_images/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/spree/promo_images/:id/:style/:basename.:extension"
end
