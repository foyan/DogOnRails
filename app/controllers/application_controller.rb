class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  
    def current_cart
       Cart.find(session[:cart_id])
    rescue
       ActiveRecord::RecordNotFound
       brand_new_cart = Cart.create
       session[:cart_id] = brand_new_cart.id
       brand_new_cart
    end
  
end
