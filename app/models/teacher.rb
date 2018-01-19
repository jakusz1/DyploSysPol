class Teacher < ApplicationRecord
belongs_to :manager
has_one :user
has_many :topics
enum degree_type: [:inzynier, :magister, :doktor, :doktorhab, :profesor]
end
