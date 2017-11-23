#Modelo do comentário 
class Comment < ApplicationRecord
  belongs_to :article
end
