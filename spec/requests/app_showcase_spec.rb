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
  describe "Vistas con sesion iniciada" do
    let!(:usuario_admin) { create(:user_admin) }

    
    it "GET admin dashboard" do
      sign_in usuario_admin

      # context "Vista administrador de ordenes" do
      get '/dashboard/orders/'
      expect(response).to have_http_status(:ok)                  

      # context "Vista administrador de productos" do
      get '/dashboard/products/'
      expect(response).to have_http_status(:ok)  

      # context "Vista administrador de usuarios" do
      get '/dashboard/users/'
      expect(response).to have_http_status(:ok)  

      # context "Vista administrador de reportes" do
      get '/dashboard/reports/'
      expect(response).to have_http_status(:ok)  
        

      sign_out usuario_admin
    end
    
    
  end
  
end
