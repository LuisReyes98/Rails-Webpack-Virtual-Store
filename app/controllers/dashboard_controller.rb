class DashboardController < ApplicationController
  
  def orders
    @current_site = 'dashboard'
  end

  def products
    @current_site = 'dashboard'
    
  end

  def create_product
    @current_site = 'dashboard'
    
  end
  
  
  
  
end