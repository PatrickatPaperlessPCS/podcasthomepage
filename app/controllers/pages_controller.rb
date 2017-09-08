class PagesController < ApplicationController
  def home
  	 @customer = Customer.new
  end
end
