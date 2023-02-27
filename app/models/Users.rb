class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews
    
    def reviews
      Review.where(user_id: self.id)
    end
    
    def products
      Product.joins(:reviews).where(reviews: {user_id: self.id})
    end
    
  
  
  
  
  