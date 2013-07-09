class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
  # attr_accessible :title, :body
  
  has_many :items, class_name: 'Item', foreign_key: :seller_id
  
  has_one :profile_pic, class_name: 'Photo', as: :imageable
  
  has_many :wish_items
  
  has_many :wishes, class_name: "Wish"
  
  
end
