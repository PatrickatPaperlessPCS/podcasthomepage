class Customer < ActiveRecord::Base

	validates_presence_of :name, :email, :podcast 
end