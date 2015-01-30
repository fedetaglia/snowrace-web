class User < ActiveRecord::Base

  has_many :races, dependent: :destroy


  
end