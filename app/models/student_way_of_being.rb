class StudentWayOfBeing < ApplicationRecord
    belongs_to :way_of_being 
    belongs_to :student
    belongs_to :educator
end
