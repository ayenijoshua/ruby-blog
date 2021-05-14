class Article < ApplicationRecord
    
    validates :title, presence: true
    validates :body, presence: true, length: {maximum:10}
    #validates :title, presence: true, length: { minimum: 5 }
                    
end
