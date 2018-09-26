class Post < ApplicationRecord
    #attr_acessible :title, :body, :category_id, :author_id
    belongs_to :category
end
