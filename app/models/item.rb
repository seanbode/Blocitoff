class Item < ActiveRecord::Base
  belongs_to :user

  scope :order_by_created_at, -> { order(created_at: :desc) }
  scope :completed, -> { where(completed: true) }
end
