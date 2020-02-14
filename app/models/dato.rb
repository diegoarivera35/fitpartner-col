class Dato < ApplicationRecord
    belongs_to :user
    def bf 
       altura.to_f / peso
    
    end
end
  