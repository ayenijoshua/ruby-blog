class Article < ApplicationRecord

    has_many :comments, class_name: "Comment", foreign_key: "article_id"
    
    validates :title, presence: true
    validates :body, presence: true, length: {maximum:10}
                    
end
