Spree::Promotion.class_eval do

  has_one :image, :as => :viewable, :dependent => :destroy, :class_name => "Spree::PromotionImage"
  accepts_nested_attributes_for :image, :reject_if => lambda { |i| i[:attachment].blank? && i[:_destroy] != "1" }, :allow_destroy => true
  attr_accessible :image_attributes, :image

end
