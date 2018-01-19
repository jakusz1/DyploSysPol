class Manager < ApplicationRecord
has_many :teachers
has_one :user
end
