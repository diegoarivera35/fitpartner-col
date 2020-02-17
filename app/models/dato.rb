class Dato < ApplicationRecord
    belongs_to :user
    def IMC 
        (peso.to_f / (altura.to_f)**2)
    end
end
  

