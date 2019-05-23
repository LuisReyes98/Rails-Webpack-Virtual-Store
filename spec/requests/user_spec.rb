require "rails_helper"

RSpec.describe "Users" , type: :request  do
  describe "GET users/sign_in" do
    
    it "debe retornar ok" do
      get '/users/sign_in'      
      expect(response).to have_http_status(:ok)                  
    end
  end
  describe "GET users/sign_up" do
    it "debe retornar ok" do
      get '/users/sign_up'      
      expect(response).to have_http_status(:ok)                  
    end
    
  end
  
end
