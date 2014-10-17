class Job < ActiveRecord::Base
  include Sluggable

  validates :title, :description, :email, :company, presence: true
  validates :remote, inclusion: { in: [true, false] }

  default_scope { order(id: :desc) }
  scope :updated_at_desc, -> { order(updated_at: :desc) }
end
