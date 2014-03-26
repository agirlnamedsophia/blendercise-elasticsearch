class Cookbook < ActiveRecord::Base
  has_many :recipes
  has_many :categories

  accepts_nested_attributes_for :categories

  # update_index 'food#recipe', :recipe

end
