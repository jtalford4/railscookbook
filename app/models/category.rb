class Category < ActiveRecord::Base
  belongs_to :calories
  has_many :category_id
end
