class Review < ApplicationRecord
belongs_to :topic
belongs_to :teacher
enum mark_type: [:'2.0', :'3.0', :'3.5', :'4.0', :'4.5', :'5.0', :'5.5']
end
