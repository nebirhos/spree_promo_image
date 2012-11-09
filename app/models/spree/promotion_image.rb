class Spree::PromotionImage < Spree::Image
  belongs_to :promotion

  has_attached_file :attachment,
                    :styles => {:mini => '48x48#', :normal => '300x300>', :large => '940x300>'},
                    :default_style => :large,
                    :url => "/spree/promo_images/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/spree/promo_images/:id/:style/:basename.:extension"

  # Load user defined paperclip settings
  if Spree::Config[:use_s3]
    s3_creds = { :access_key_id => Spree::Config[:s3_access_key], :secret_access_key => Spree::Config[:s3_secret], :bucket => Spree::Config[:s3_bucket] }
    attachment_definitions[:attachment][:storage] = :s3
    attachment_definitions[:attachment][:s3_credentials] = s3_creds
    attachment_definitions[:attachment][:s3_headers] = ActiveSupport::JSON.decode(Spree::Config[:s3_headers])
    attachment_definitions[:attachment][:bucket] = Spree::Config[:s3_bucket]
  end
end
