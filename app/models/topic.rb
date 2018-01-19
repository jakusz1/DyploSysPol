class Topic < ApplicationRecord
belongs_to :teacher
has_many :students
enum studies_type: [:inz, :mgr]
end
