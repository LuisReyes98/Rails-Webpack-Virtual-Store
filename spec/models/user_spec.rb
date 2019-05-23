require "rails_helper"

RSpec.describe User, type: :model do
  describe "Validaciones" do

    it "validar campos requeridos" do
      should validate_presence_of(:email)
      should validate_presence_of(:password)
      should have_many(:orders)    
    end
              
  end
  
  describe "No debe crear los siguiente usuarios" do
    it "Correo con formato invalido" do
      user = User.create(
        email: 'testexample.com', 
        password: 'password123',
        password_confirmation: 'password123'
      )
      expect(user.valid?).to be_falsy      
    end
    it "Correo vacio" do
      user = User.create(
        email: '', 
        password: 'password123',
        password_confirmation: 'password123'
      )
      expect(user.valid?).to be_falsy 
      
    end
    it "contraseñas no coinciden" do
      user = User.create(
        email: 'test@example.com', 
        password: 'passw123',
        password_confirmation: 'password123'
      )
      expect(user.valid?).to be_falsy 
    end
    it "falta contraseña" do      
      user = User.create(
        email: 'test@example.com', 
        password: '',
        password_confirmation: 'password123'
      )
      expect(user.valid?).to be_falsy 
    end
    it "falta confirmacion de contraseña" do
      user = User.create(
        email: 'test@example.com', 
        password: 'password123',
        password_confirmation: ''
      )
      expect(user.valid?).to be_falsy 
    end                
    
    
  end
  
  
end

