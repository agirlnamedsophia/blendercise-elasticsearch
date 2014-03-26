class Category < ActiveRecord::Base
  has_many :recipes

  class << self
  end

  update_index 'food#category', :self
end
