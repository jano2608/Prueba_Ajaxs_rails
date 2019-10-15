class Conpany < ApplicationRecord
    has_many :complaints, dependent: :destroy
end
