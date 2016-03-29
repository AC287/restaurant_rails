class Mitem < ActiveRecord::Base
  # has_and_belongs_to_many :receipts
  has_many :receipts

  validates :name, presence: true, uniqueness: true
  # stackoverflow for validate price: http://stackoverflow.com/questions/4173530/ruby-on-rails-validate-a-cost
  validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => {:greater_than => 0}

end
