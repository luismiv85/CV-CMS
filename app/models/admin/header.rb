class Admin::Header < ActiveRecord::Base
	has_many :skills
	accepts_nested_attributes_for :skills, :allow_destroy => true
	has_attached_file :avatar, :styles => { :medium => "190x190>", :thumb => "100x100>" }, 
  	:url  => "/assets/avatar/:id/:style/:basename.:extension",
    :path => ":rails_root/public/assets/avatar/:id/:style/:basename.:extension",
    :default_url => "/images/:style/missing.png"
    # Validate filename
  validates_attachment_file_name :avatar, :matches => [/png\Z/, /jpe?g\Z/]
end
