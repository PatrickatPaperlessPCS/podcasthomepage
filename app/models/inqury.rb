class Inqury < ActiveRecord::Base
	validates_presence_of :name, :email, :brand
end
