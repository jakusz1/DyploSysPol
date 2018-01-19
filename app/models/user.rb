class User < ApplicationRecord
belongs_to :manager
belongs_to :representative
belongs_to :student
belongs_to :teacher
end
