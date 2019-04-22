class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def self.getAccessLevels
    return [
    'normal',
    'normal',
    'normal',
    'normal',
    'normal',
    'normal',
    'normal',
    'normal',
    'normal',
    'normal',
    'admin'
  ]

  end
  

end
