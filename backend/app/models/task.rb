class Task < ApplicationRecord
    validates :title, presence: true
    validates :emoji, presence: true
end
