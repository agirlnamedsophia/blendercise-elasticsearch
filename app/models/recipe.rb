class Recipe < ActiveRecord::Base
  # belongs_to :cookbook
  has_one :category

  Chewy.atomic do
    Recipe.all.each { |recipe| recipe.update_attributes(title: recipe.title.strip) }
  end

  # update_index 'food#recipe', :self, urgent: true
end
