class PagesController < ApplicationController
  def home
  end 
  
  def influencer
  	 @customer = Customer.new
  end

  def brands
  	@inqury = Inqury.new
  end
end
