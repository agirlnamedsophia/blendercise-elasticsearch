class Category < ActiveRecord::Base
  has_many :recipes
  # has_many :cookbooks

  update_index 'food#recipe', :recipe
end
