require "rails_helper"

RSpec.describe User, type: :model do
  describe "Validaciones" do
    it "validar campos requeridos" do
      should validate_presence_of(:email)
      should validate_presence_of(:password)
      
    end
    

    
  end
  
end

