class Category < ApplicationRecord
    #attr_acessible :name
    has_many :posts
end
