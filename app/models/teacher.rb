class Teacher < ApplicationRecord
belongs_to :manager
belongs_to :user
has_many :topics
has_many :reviews
enum degree_type: [:inzynier, :magister, :doktor, :doktorhab, :profesor]
end
