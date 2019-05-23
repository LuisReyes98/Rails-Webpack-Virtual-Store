FactoryBot.define do
  factory :user_basic, class: 'User' do
    email { 'email@email.com'}
    password { 'admin123'} 
    password_confirmation { 'admin123'} 
    access_level { 1 }
  end

  factory :user_admin, class: 'User' do
    email { 'admin@email.com'}
    password { 'admin123'} 
    password_confirmation { 'admin123'} 
    access_level { 10 }
  end
  
end