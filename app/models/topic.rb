class Topic < ApplicationRecord
belongs_to :teacher
has_many :students
enum studies_type: [:inżynierskie, :magisterskie]

validates :attending_number, :title, :studies_type, presence: true
validates :attending_number, :inclusion => 1..4

end
