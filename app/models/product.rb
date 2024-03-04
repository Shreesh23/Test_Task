class Product < ApplicationRecord
    belongs_to :category
    def self.ransackable_attributes(auth_object = nil)
        %w[id category_id created_at updated_at price product_name]
    end
    
    def self.ransackable_associations(auth_object = nil)
     %w[category] # Add any additional associations you want to search
    end
end
