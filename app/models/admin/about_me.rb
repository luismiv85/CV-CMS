class Admin::AboutMe < ActiveRecord::Base
	has_many :events
	has_many :skills, :class_name => "SkillAbout", :foreign_key => "about_me_id"
	has_many :boxes
	accepts_nested_attributes_for :events, :allow_destroy => true
	accepts_nested_attributes_for :skills, :allow_destroy => true
	accepts_nested_attributes_for :boxes, :allow_destroy => true
end
