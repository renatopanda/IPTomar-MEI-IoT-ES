class Document < ApplicationRecord

    validates :name, presence: { message: "O campo não pode ser vazio." }, 
                            length: { minimum: 4 , :message => "Tem de ter no minimo 4 caracteres." }

     validates :description, presence: { message: "O campo não pode ser vazio." }, 
                            length: { minimum: 4 , :message => "Tem de ter no minimo 4 caracteres." }

     validates :date, presence: { message: "O campo não pode ser vazio e terá de ser no formato: AAAAMMDD ex: 201661202" }, 
                            length: { minimum: 4 , :message => "Tem de ter no minimo 4 caracteres." }

     validates :local, presence: { message: "O campo não pode ser vazio." }, 
                            length: { minimum: 4 , :message => "Tem de ter no minimo 4 caracteres." }

    belongs_to :user
    belongs_to :project
end
