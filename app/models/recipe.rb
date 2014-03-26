class Recipe < ActiveRecord::Base
  # belongs_to :cookbook
  has_many :categories

  # Chewy.atomic do
  #   Recipe.all.each { |recipe| recipe.update_attributes(title: recipe.title.strip) }
  # end

  update_index 'food#recipe', :self, urgent: true
  accepts_nested_attributes_for :categories, allow_destroy: true

  def category
    category = Category.where(id: self.category_id).first
    return category
  end

  class << self
  end
end
