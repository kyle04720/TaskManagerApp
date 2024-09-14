class Task < ApplicationRecord
  validates :content, {presence: true}
  validates :deadline, {presence: :true}
end
