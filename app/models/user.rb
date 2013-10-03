class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable

  has_many :groups, foreign_key: :owner_id, dependent: :nullify         
  has_many :categories, foreign_key: :owner_id, dependent: :nullify
  
end
