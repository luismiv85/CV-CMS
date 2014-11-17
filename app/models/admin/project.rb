class Admin::Project < ActiveRecord::Base
	belongs_to :reference
	  has_attached_file :image, :styles => { :medium => "190x190>", :thumb => "100x100>" }, 
  	:url  => "/assets/reference/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/reference/:id/:style/:basename.:extension",
    :default_url => "/images/:style/missing.png"
    # Validate filename
  validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]
end
