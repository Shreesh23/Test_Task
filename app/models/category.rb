class Category < ApplicationRecord
    has_many :products
    
    def self.ransackable_attributes(auth_object = nil)
        %w[id category_id created_at updated_at category_name]
    end
    
    def self.ransackable_associations(auth_object = nil)
         %w[products] # Add any additional associations you want to search
    end

end
