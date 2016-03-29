class Customer < ActiveRecord::Base
  belongs_to :user
  has_one :receipt

  validates :name, :table, presence: true

end
