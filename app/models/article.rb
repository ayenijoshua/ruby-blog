class Article < ApplicationRecord
    include Visible

    has_many :comments, class_name: "Comment", foreign_key: "article_id", dependent: :destroy
    
    validates :title, presence: true
    validates :body, presence: true, length: {maximum:10}

    def archived?
        status == 'archived'
    end
                    
end
