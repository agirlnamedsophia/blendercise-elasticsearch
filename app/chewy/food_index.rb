class FoodIndex < Chewy::Index
  settings analysis: {
    analyzer: {
      title: {
        tokenizer: 'standard',
        filter: ['lowercase', 'asciifolding']
      },
      sorted: {
        tokenizer: 'keyword',
        filter: ['lowercase', 'asciifolding']
      }
    }
  }

  define_type Category.includes(:recipes) do
    field :name, analyzer: 'title'
    field :recipe_id, type: 'integer'
  end

  define_type Recipe.includes(:categories) do
    field :title
    field :ingredients, analyzer: 'title'
    field :instructions, analyzer: 'title'
    field :category_id, type: 'integer'
  end
end
