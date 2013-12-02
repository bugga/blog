class Post < ActiveRecord::Base
	# Need to clog up a potential security hole!!!
	# someone could access fields that they should not
	# restrict access to only updatable fields (prevent mass assignment for all fields)

	validates :title, :content, :presence => true
	validates :title, :length => { :minimum => 2 }
	validates :title, :uniqueness => true
end
