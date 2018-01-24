class Manager < ApplicationRecord
has_many :teachers
belongs_to :user
end
