require "rails_helper"
require "byebug"

RSpec.describe Users::SessionsController do
  
  describe "Inicios de sesion" do
    let!(:usuario) { create(:user_basic) }
    it "deberia iniciar sesion" do
      sign_in usuario
      # byebug

      expect(subject.current_user).to eq(usuario)
    end

    it "deberia cerrar sesion" do
      sign_out usuario
      expect(subject.current_user).to_not eq(usuario)
      
    end
            
    
  end
  
end
