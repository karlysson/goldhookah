class Client < ApplicationRecord
    validates_presence_of :name, :cpf, :birth
end
