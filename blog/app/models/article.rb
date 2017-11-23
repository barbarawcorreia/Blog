#Modelo do Artigo. Artigo herda métodos de ApplicationRecord e este herda de ActiveRecord. 
class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :title, presence: true,
    length: { minimum: 5 }
end
