class User < ActiveRecord::Base
  after_initialize :init
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
  # attr_accessible :title, :body
  
  has_many :sell_items, class_name: 'Item', foreign_key: :seller_id
  
  has_one :profile_pic, class_name: 'Photo', as: :imageable
  
  has_many :wishes, class_name: "Wish"
  
  has_many :wish_items, through: :wishes, source: :item
  
  has_many :carts, class_name: "Cart"
  
  has_many :cart_items, through: :carts, source: :item
  
  has_many :buy_transactions, class_name: 'Transaction', foreign_key: :buyer_id
  
  has_many :sell_transactions, through: :items, source: "transaction"
  
  
  
  def init
    self.gold ||= 200
    
  end

  
end
