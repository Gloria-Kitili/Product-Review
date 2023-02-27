class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :product
    
    def user
      User.find_by(id: self.user_id)
    end
    
    def product
      Product.find_by(id: self.product_id)
    end
    
    def print_review
      puts "Review for #{self.product.name} by #{self.user.name}: #{self.star_rating}. #{self.comment}"
    end
  end