class Task < ApplicationRecord
  validates :title, presence: true

  def completed?
    completed_at.present?
  end
end
