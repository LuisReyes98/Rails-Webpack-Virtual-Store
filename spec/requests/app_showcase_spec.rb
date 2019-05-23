require "rails_helper"

RSpec.describe "Dashboard", type: :request  do
  describe "Recorrer Home" do
    
    it "debería cargar el index y sus productos" do
      get '/'
      expect(response).to have_http_status(:ok)                  
            
    end
    
    it "debería cargar el carrito" do
      get '/cart'
      expect(response).to have_http_status(:ok)                  
            
    end
    
  end
  
end
