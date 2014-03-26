class Category < ActiveRecord::Base
  has_many :recipes
  # has_many :cookbooks

  class << self
  end

  update_index 'food#category', :self
end
