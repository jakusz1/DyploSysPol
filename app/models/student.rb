class Student < ApplicationRecord
belongs_to :topic
enum studies_type: [:inz, :mgr]
end
