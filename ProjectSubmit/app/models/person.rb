class Person < ApplicationRecord
    validates :name, length: { minimum: 3 , :message => "Tem de ter no minimo 3 caracteres." }
    validates :email, presence: true
    #validates :photo, presence: true
    has_and_belongs_to_many :projects
    belongs_to :person_type

    has_and_belongs_to_many :supervised_projects, :class_name => "Project", :join_table => :projects_supervisors
    has_and_belongs_to_many :juried_presentations, :class_name => "Presentation", :join_table => :juries_presentations

    has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/img/person.png"
    validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
